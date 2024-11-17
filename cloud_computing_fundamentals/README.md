<p align="center">
    <img src="https://www.inbest.cloud/hs-fs/hubfs/google-cloud-platform-1.jpeg?width=1950&name=google-cloud-platform-1.jpeg">
</p>

# Cloud Computing Fundamentals

## Introducción
Este módulo tiene como objetivo enseñarte qué es la computación en la nube y su impacto en la tecnología y las empresas. A lo largo del módulo, explorarás las diferencias entre arquitecturas físicas, virtuales y en la nube. También aprenderás a diferenciar entre los modelos IaaS (Infraestructura como Servicio), PaaS (Plataforma como Servicio) y SaaS (Software como Servicio).

Además, conocerás los servicios de procesamiento, almacenamiento, macrodatos y aprendizaje automático (ML) de Google Cloud, y cómo la red de Google potencia la computación en la nube.

El módulo comienza con una definición de la computación en la nube, luego se comparan las arquitecturas tradicionales y en la nube, y se profundiza en los modelos IaaS, PaaS y SaaS. Finalmente, se explora la arquitectura de Google Cloud

## Contenido
1. [¿Qué es la nube?]()
2. [Comienza con una plataforma sólida]()
3. [Usa Google Cloud para compilar tus apps]()

## 1. ¿Qué es la nube?
### Computación en la nube

<p align="center">
    <img src="https://www.daemon4.com/wp-content/uploads/imagen-articulo-cloud-computing.jpg" width=400>
</p>

La computación en la nube es un concepto desarrollado por el Instituto Nacional de Estándares y Tecnología de EE. UU., pero no exclusivo de ese país. Es una forma de usar la tecnología de la información (TI) que se caracteriza por cinco cualidades importantes:

1. Los recursos de procesamiento, almacenamiento y red son proporcionados bajo demanda y mediante autoservicio a través de una interfaz web.

2. Los clientes acceden a esos recursos desde cualquier lugar, a través de Internet.

3. El proveedor posee un gran grupo de recursos que se asignan dinámicamente a los usuarios, aprovechando economías de escala.

4. Los recursos son elásticos, es decir, pueden aumentarse o reducirse según sea necesario.

5. Los clientes pagan solo por lo que usan o reservan, deteniendo los pagos cuando no usan recursos.

Además, la infraestructura de TI se puede comparar con la infraestructura básica de una ciudad, donde los recursos tecnológicos sirven de manera similar a cómo los servicios públicos funcionan en una comunidad. En el curso, se explorarán los servicios de infraestructura que Google Cloud proporciona.

### La nube en comparación con la arquitectura tradicional
<p align="center">
    <img src="https://planetmainframe.com/wp-content/uploads/2022/12/Mainframe-vs-Cloud.jpg">
</p>

La computación en la nube pasó por varias fases: la colocación, la virtualización y finalmente la automatización con contenedores. Google adoptó esta última, creando una infraestructura de nube elástica y automatizada. Actualmente, los servicios de Google Cloud aprovisionan automáticamente los recursos necesarios para ejecutar aplicaciones.

Google se enfoca en la sostenibilidad, con centros de datos como el de Hamina, Finlandia, que utilizan innovaciones como el enfriamiento con agua de mar. Además, fue la primera empresa grande en lograr emisiones neutras de carbono y busca operar sin emisiones para 2030.

### IaaS, PaaS y SaaS

<p align="center">
    <img src="https://www.cloudflare.com/img/learning/serverless/glossary/platform-as-a-service-paas/saas-paas-iaas-cloud-pyramid.svg" width=400>
</p>

La computación en la nube ofrece tres modelos principales: IaaS, PaaS y SaaS.

- IaaS proporciona recursos virtualizados como procesamiento, almacenamiento y redes.

- PaaS ofrece infraestructura gestionada para el desarrollo de aplicaciones, permitiendo a los usuarios centrarse en la lógica de la aplicación.

- SaaS son aplicaciones que se ejecutan directamente en la nube, accesibles a través de internet (ej., Gmail, Drive).

La evolución de la nube también incluye la computación sin servidores, donde los desarrolladores se enfocan solo en el código, sin gestionar la infraestructura, con herramientas como Cloud Functions y Cloud Run.

### Infraestructura de Google Cloud

<p align="center">
    <img src="https://i0.wp.com/www.sorotech.com/wp-content/uploads/2022/07/IaaS.png?w=768&ssl=1" width=400>
</p>

Google Cloud se organiza en tres capas principales:

- Capa Base: Red y seguridad, que soportan la infraestructura y aplicaciones de Google.

- Capa Media: Procesamiento y almacenamiento desacoplados, escalables según necesidades.

- Capa Superior: Productos de macrodatos y IA, que permiten la transferencia, almacenamiento, procesamiento y análisis de datos, sin necesidad de gestionar infraestructura.

Servicios destacados de Google Cloud:

- Procesamiento: Compute Engine, Kubernetes Engine, App Engine, Cloud Functions, Cloud Run.

- Almacenamiento: Cloud Storage, Cloud SQL, Cloud Spanner (relacional), Bigtable y Firestore (NoSQL).

- Macrodatos y IA: BigQuery, Dataflow, AutoML, Vertex AI.

La infraestructura global de Google Cloud tiene más de 100 nodos de almacenamiento y cubre 5 ubicaciones geográficas (América, Europa, Asia, Australia), con zonas y regiones para garantizar disponibilidad y latencia baja. Se puede configurar de manera zonal, regional o multirregional, optimizando la cercanía con los usuarios y la protección ante fallos.

### Cuestionario
1. **¿Cuál es uno de los atributos fundamentales de la computación en la nube?**
   - Los clientes solo obtienen recursos de procesamiento cuando el proveedor de servicios en la nube tiene disponibilidad.
   - **Los clientes acceden a los recursos de procesamiento por Internet, desde cualquier lugar.** ✅
   - No se puede aumentar ni reducir verticalmente la escala de los recursos de procesamiento.
   - Los clientes pagan por los recursos de procesamiento asignados independientemente.

2. **¿Qué servicio proporciona capacidades de procesamiento, almacenamiento y redes sin procesar, organizadas de manera virtual en recursos que son similares a los centros de datos físicos?**
   - FaaS
   - **IaaS** ✅
   - PaaS
   - SaaS

3. **¿Dónde se implementan los recursos de Google Cloud?**
   - Multirregión
   - Ubicación
   - **Zona** ✅
   - Región

4. **¿Cuál es la nube completamente automatizada y elástica de la tercera ola que se compone de una combinación de servicios automatizados y datos escalables?**
   - Colocación
   - Local
   - Centro de datos virtualizado
   - **Arquitectura basada en contenedores** ✅














