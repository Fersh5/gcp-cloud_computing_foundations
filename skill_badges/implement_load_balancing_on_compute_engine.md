# Load Balancing on Compute Engine

## Situacion del desafio

Comenzaste en un nuevo cargo como ingeniero júnior de servicios de nube para Jooli Inc. Se espera que ayudes a administrar la infraestructura en Jooli. Entre tus tareas frecuentes se encuentra aprovisionar recursos para los proyectos.

Se espera que tengas las habilidades y el conocimiento necesarios para realizar estas tareas, por lo que no se te proporcionarán guías paso a paso.

Estas son algunas pautas de Jooli, Inc. que debes seguir:

    1. Crea todos los recursos en la región o zona predeterminada, a menos que se indique lo contrario. La región predeterminada es REGION, y la zona predeterminada es ZONE.
    
    2. En la asignación de nombres, normalmente se usa el formato equipo-recurso, por ejemplo, el nombre de una instancia podría ser nucleus-webserver1.
    
    3. Asigna tamaños de recursos rentables. Planifica con cuidado porque los proyectos se supervisan, y el uso excesivo de recursos dará como resultado la finalización del proyecto que los contiene, es decir, posiblemente el tuyo. Esta es la orientación que el equipo de supervisión está dispuesto a compartir: a menos que se indique lo contrario, usa e2-micro para VMs pequeñas de Linux y e2-medium para Windows o una aplicación diferente, como los nodos de Kubernetes.


## Tarea 1. Crea una instancia jumphost para el proyecto

Utilizarás esta instancia para realizar el mantenimiento del proyecto.

**Requisitos:**

* Asígnale el nombre Instance name a la instancia.
* Crea la instancia en la zona ZONE.
* Usa un tipo de máquina e2-micro.
* Usa el tipo de imagen predeterminado (Debian Linux).

## Tarea 2. Configura un balanceador de cargas HTTP
Entregarás el sitio por medio de servidores web de NGINX, pero queremos asegurarnos de que el entorno es tolerante a errores. Crea un balanceador de cargas HTTP con un grupo de instancias administrado de **2 servidores web de NGINX.** Usa el siguiente código para configurar los servidores web. El equipo reemplazará estos detalles por su propia configuración más adelante.

``` bash
cat << EOF > startup.sh
#! /bin/bash
apt-get update
apt-get install -y nginx
service nginx start
sed -i -- 's/nginx/Google Cloud Platform - '"\$HOSTNAME"'/' /var/www/html/index.nginx-debian.html
EOF
```
Realiza lo siguiente:

* Crea una plantilla de instancias. No uses el tipo de máquina predeterminado. Asegúrate de especificar e2-medium como el tipo de máquina.
* Crea un grupo de instancias administrado basado en la plantilla.
* Crea una regla de firewall llamada Firewall rule para permitir el tráfico (80/tcp).
* Crea una verificación de estado.
* Crea un servicio de backend y agrega tu grupo de instancias como backend al grupo de servicios de backend con el puerto nombrado (http:80).
* Crea un mapa de URL y orienta el proxy HTTP para enrutar las solicitudes entrantes al servicio de backend predeterminado.
* Crea un Proxy HTTP de destino para enrutar las solicitudes a tu mapa de URLs.
* Crea una regla de reenvío.

---

# Inicio Solución

``` bash
# Example
# Usa la region y zona que te indica tu lab
gcloud config set compute/region us-west4
gcloud config set compute/zone us-west4-a

export REGION=$(gcloud config get-value compute/region)
export ZONE=$(gcloud config get-value compute/zone)

# Usa el nombre de la instancia que te indica el lab
gcloud compute instances create nucleus-jumphost-805 \
    --machine-type e2-micro \
    --zone $ZONE


cat << EOF > startup.sh
#! /bin/bash
apt-get update
apt-get install -y nginx
service nginx start
sed -i -- 's/nginx/Google Cloud Platform - '"\$HOSTNAME"'/' /var/www/html/index.nginx-debian.html
EOF

gcloud compute instance-templates create web-server-template \
    --region $REGION \
    --machine-type=e2-medium \
    --metadata-from-file startup-script=startup.sh

gcloud compute instance-groups managed create web-server-group \
    --base-instance-name web-server --template web-server-template --size=2 --region=$REGION

# Usa la regla de firewall que te proporciona el lab
gcloud compute firewall-rules create allow-tcp-rule-629 \
        --allow tcp:80 \
        --network default

gcloud compute health-checks create http http-basic-check \
    --port 80


gcloud compute instance-groups managed \
        set-named-ports web-server-group \
        --named-ports http:80 \
        --region $REGION


gcloud compute backend-services create web-backend-service \
    --protocol=HTTP \
    --port-name=http \
    --health-checks=http-basic-check \
    --global

gcloud compute backend-services add-backend web-backend-service \
     --instance-group=web-server-group \
     --instance-group-region=$REGION \
     --global

gcloud compute url-maps create web-map-http \
    --default-service web-backend-service

gcloud compute target-http-proxies create http-lb-proxy \
    --url-map web-map-http

gcloud compute forwarding-rules create http-content-rule \
      --global \
      --target-http-proxy http-lb-proxy \
      --ports 80

```

