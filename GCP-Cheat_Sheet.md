# GCP - Cheat Sheet

| Action                    | Command                           |
|---------------------------|-----------------------------------|
|Ayuda de gcloud|gcloud -h| |
|Ver ID del proyecto|gcloud config get-value project| |
|Ver detalles del proyecto|gcloud compute project-info describe --project  $(gcloud config get-value rpoject)| |
|Establece la región del proyecto|gcloud config set compute/region [region]|
|Establece la zona del proyecto|gcloud config set compute/zone [zone]|
|Ver la configuración de la región del proyecto|gcloud config get-value compute/region| |
|Ver la configuración de la zona del proyecto|gcloud config get-value compute/zone| |
|Crear una instancia de VM|gcloud compute instances create [name_vm] --machine-type [type-machine] --zone=[zone]
|Crear una instancia de VM, aplica etiquetas y script de configuracion inicial|  gcloud compute instances create www1 \ <br> --zone=Zone \ <br>--tags=network-lb-tag \ <br>--machine-type=e2-small \ <br>--image-family=debian-11 \ <br>--image-project=debian-cloud \ <br>--metadata=startup-script='#!/bin/bash<br>&nbsp;&nbsp;&nbsp;&nbsp;apt-get update<br>&nbsp;&nbsp;&nbsp;&nbsp;apt-get install apache2 -y<br>&nbsp;&nbsp;&nbsp;&nbsp;service apache2 restart<br>&nbsp;&nbsp;&nbsp;&nbsp;echo "\<h3>Web Server: www1\</h3>" \| tee /var/www/html/index.html'|  |
|Crea una regla de firewall para permitir la entrada de trafico externo|gcloud compute firewall-rules create www-firewall-network-lb \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--target-tags network-lb-tag <br>&nbsp;&nbsp;&nbsp;&nbsp;--allow tcp:80|
|Ayuda del comando create|gcloud compute instances create --help| |
|Conectarte a tu instancia de VM|gcloud compute ssh [name_vm] --zone=[zone]|
|Ayuda del comando config|gcloud config --help| |
|Ayuda del comando config|gcloud help config| |
|Visualiza la lista de parámetros de configuración de tu entorno|gcloud config list| |
|Visualiza todas las propiedades y sus parámetros de configuración|gcloud config list --all| |
|Obtén una lista de tus componentes|gcloud components list| |
|Obtén una lista de las instancias de procesamiento disponibles en el proyecto|gcloud compute instances list| |
|Aplica filtros a tus instancias|gcloud compute instances list --filter="name=('[name_vm]')"|
|Obtén una lista de reglas de firewall del proyecto|gcloud compute firewall-rules list| |
|Obtén una lista de reglas de firewall de la red predeterminada|gcloud compute firewall-rules list --filter="network='default'"| |
|Obtén una lista de reglas de firewall del proyecto que usan el puerto 80|gcloud compute firewall-rules list --filter=ALLOW:'80'| |
|Obtén una lista de reglas de firewall de la red predeterminada en la que la regla de permiso coincide con una regla ICMP|gcloud compute firewall-rules list --filter="network='default' AND ALLOW:'icmp'"| |
|Agregar una etiqueta a una VM|gcloud compute instances add-tags [name_vm] --tags [name_tag]|
|Actualizar las reglas de firewall para permitir conexión mediante peticiones http|gcloud compute firewall-rules create [name_rule_firewall] --direction=INGRESS --priority=1000 --network=[red] --action=ALLOW --rules=tcp:80 --source-ranges=0.0.0.0/0 --target-tags=[etiqueta]|
|Obtén la IP externa de una VM|gcloud compute instances list --filter=name:[name_vm] --format='value(EXTERNAL_IP)'|
|Visualizar los registros del sistema|gcloud logging logs list| |
|Consulta los registros relacionados a los recursos de procesamiento|gcloud logging logs list --filter="compute"|
|Consulta los registros relacionados con el tipo de recurso 'gce_instance'|gcloud logging read "resource.type=gce_instance" --limit 5|
|Consulta los registros de una VM en especifico|gcloud logging read "resource.type=gce_instance AND labels.instance_name='my_vn'" --limit 5|
|Crea una dirección IP externa estática (para balanceador de cargas)|gcloud compute addresses create network-lb-ip-1 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--region [region]|
|Agregar un recurso de verificación de estado HTTP heredado|gcloud compute http-health-checks create basic-check|
|Agrega un grupo de destino en la misma región que tus instancias.|gcloud compute target-pools create www-pool \ <br>--region Region --http-health-check basic-check|
|Agrega las instancias al grupo|gcloud compute target-pools add-instances www-pool \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--instances www1,www2,www3|
|Agrega una regla de reenvío|gcloud compute forwarding-rules create www-rule \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--region  Region \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--ports 80 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--address network-lb-ip-1 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--target-pool www-pool|
|Ver la dirección IP externa de la regla de reenvío www-rule (que usa el balanceador de cargas)|gcloud compute forwarding-rules describe www-rule --region Region|
|Crea una variable con la IP externa de la regla de reenvío|IPADDRESS=$(gcloud compute forwarding-rules describe www-rule --region Region --format="json" \| jq -r .IPAddress)|
|Crear una plantilla de un balanceador de cargas (HTTPs)|gcloud compute instance-templates create lb-backend-template \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--region=Region \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--network=default \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--subnet=default \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--tags=allow-health-check \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--machine-type=e2-medium \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--image-family=debian-11 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--image-project=debian-cloud \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--metadata=startup-script='#!/bin/bash <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;apt-get update <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;apt-get install apache2 -y <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a2ensite default-ssl <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a2enmod ssl <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vm_hostname="$(curl -H "Metadata-Flavor:Google" \ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;http://169.254.169.254/computeMetadata/v1/instance/name)" <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo "Page served from: $vm_hostname" \| \ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tee /var/www/html/index.html <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;systemctl restart apache2'|
|Crea un grupo de instancias administrado basado en plantillas|gcloud compute instance-groups managed create lb-backend-group \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--template=lb-backend-template --size=2 --zone=Zone|
|Crea una regla de firewall para permitir la entrada de trafico solo de sistemas de verificacion de google cloud y los tags definidos|gcloud compute firewall-rules create fw-allow-health-check \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--network=default \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--action=allow \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--direction=ingress \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--source-ranges=130.211.0.0/22,35.191.0.0/16 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--target-tags=allow-health-check \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--rules=tcp:80|
|Configura una dirección IP externa, estática y global con la cual llegaran los clientes al balanceador de cargas|gcloud compute addresses create lb-ipv4-1 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--ip-version=IPV4 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--global|
|Mira la dirección IP creada para  el balanceador de cargas|gcloud compute addresses describe lb-ipv4-1 \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--format=""get(address)"" \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--global|
|Crear una verificación de estado para el balanceador de cargas|gcloud compute health-checks create http http-basic-check \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--port 80|
|Crea un servicio de backend|gcloud compute backend-services create web-backend-service \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--protocol=HTTP \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--port-name=http \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--health-checks=http-basic-check \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--global|
|Agrega a tu grupo de instancias como backend al servicio de backend|gcloud compute backend-services add-backend web-backend-service \ <br>&nbsp;&nbsp;&nbsp;&nbsp; --instance-group=lb-backend-group \ <br>&nbsp;&nbsp;&nbsp;&nbsp; --instance-group-zone=Zone \ <br>&nbsp;&nbsp;&nbsp;&nbsp; --global|
|Crea un mapa de URLs para enrutar las solicitudes entrantes al servicio de backend predeterminado|gcloud compute url-maps create web-map-http \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--default-service web-backend-service|
|Crea un Proxy HTTP de destino para enrutar las solicitudes a tu mapa de URLs|gcloud compute target-http-proxies create http-lb-proxy \ <br>&nbsp;&nbsp;&nbsp;&nbsp;--url-map web-map-http|
|Crea una regla de reenvío global para enrutar las solicitudes entrantes al proxy|gcloud compute forwarding-rules create http-content-rule \ <br>&nbsp;&nbsp;&nbsp;&nbsp; --address=lb-ipv4-1\ <br>&nbsp;&nbsp;&nbsp;&nbsp; --global \ <br>&nbsp;&nbsp;&nbsp;&nbsp; --target-http-proxy=http-lb-proxy \ <br>&nbsp;&nbsp;&nbsp;&nbsp; --ports=80|

