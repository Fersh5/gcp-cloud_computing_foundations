# Usa Google Cloud para compilar tus apps
## Introducción
En este módulo aprenderás a compilar aplicaciones directamente en Google Cloud. Los temas que explorarás incluyen:

1. **Opciones de procesamiento en la nube.**
2. **Compilación y administración de máquinas virtuales.**
3. **Creación de aplicaciones elásticas con ajuste de escala automático.**
4. **Uso de App Engine para opciones de PaaS.**
5. **Creación de servicios controlados por eventos con Cloud Functions.**
6. **Alojamiento en contenedores y organización de aplicaciones con Google Kubernetes Engine.**
7. **Desarrollo e implementación de aplicaciones alojadas en contenedores escalables con Cloud Run.**

El módulo también incluye cinco **labs prácticos** para que puedas aplicar lo aprendido, seguido de un **cuestionario corto** y un **resumen** de los temas cubiertos.

## Opciones de procesamiento en la nube

Google Cloud ofrece diversas opciones para el procesamiento en la nube, cada una adecuada para distintos tipos de cargas de trabajo:

1. **Compute Engine**: Ideal para cargas de trabajo generales que requieren recursos exclusivos para tus aplicaciones.
2. **App Engine**: Una plataforma como servicio (PaaS) perfecta para desarrolladores que desean enfocarse en el código sin preocuparse por la infraestructura.
3. **Cloud Functions**: Opción sin servidores para ejecutar código activado por eventos, sin necesidad de gestionar la infraestructura.
4. **Google Kubernetes Engine**: Para ejecutar contenedores en una plataforma Kubernetes administrada, ideal para aplicaciones contenerizadas.
5. **Cloud Run**: Plataforma sin servidores completamente administrada para desarrollar e implementar aplicaciones escalables alojadas en contenedores.

## Explora IaaS con Compute Engine

Google Cloud ofrece **Compute Engine** como solución de infraestructura como servicio (IaaS) para crear y ejecutar máquinas virtuales (VM) en sus centros de datos y red global de fibra óptica.

### Características Principales:
- **Máquinas Virtuales (VM)**: Puedes crear máquinas virtuales con la potencia y funcionalidad de un sistema operativo completo. Estas VM se pueden configurar con la cantidad de CPU, memoria, almacenamiento y sistema operativo que necesites.
- **Versatilidad**: Ejecuta cargas de trabajo como hosting de servidores web, aplicaciones o backends de aplicaciones.
- **Opciones de Creación**: Las instancias de VM pueden ser creadas mediante la consola de Google Cloud o la CLI de gcloud.
- **Sistemas Operativos**: Google ofrece imágenes de servidor Linux y Windows Server, además de la opción de usar imágenes personalizadas o de otros sistemas operativos.

### Precios y Facturación:
- **Facturación por Segundo**: Compute Engine factura por segundo con un mínimo de un minuto de uso.
- **Descuentos por Uso Continuo**: Si el uso se prolonga, se aplican automáticamente descuentos por uso continuo.
- **Descuentos por Compromiso de Uso**: Para cargas de trabajo predecibles, puedes comprometerte a un uso de CPU y memoria por uno o tres años, lo que ofrece descuentos de hasta el 57%.
- **VMs Interrumpibles**: Ofrecen descuentos de hasta un 90% para trabajos que no necesitan completarse inmediatamente, pero se interrumpen si se requieren recursos para otras tareas. Es ideal para trabajos por lotes o tareas que puedan reiniciarse.

### Herramientas:
- **Calculadora de Precios**: Usa la calculadora de precios de Google Cloud para estimar los costos y descuentos de diferentes configuraciones.

## Crear una Máquina Virtual en Google Cloud

En el ejercicio del laboratorio titulado **"Creating a Virtual Machine"** aprenderás a crear una máquina virtual (VM) en Google Cloud utilizando las siguientes herramientas:

### Pasos Principales:
1. **Crear una Máquina Virtual con la Consola de Google Cloud**:
   - Utiliza la consola web de Google Cloud para crear la VM de manera sencilla y rápida.
  
2. **Crear una Máquina Virtual con la Línea de Comandos de gcloud**:
   - Usa la herramienta de línea de comandos **gcloud** para crear y gestionar instancias de máquinas virtuales.

3. **Implementar un Servidor Web**:
   - Después de crear la máquina virtual, implementarás un servidor web en ella, permitiendo conectar la VM a una aplicación web.

Este ejercicio te guiará en la creación de una VM desde la consola y mediante comandos, y te mostrará cómo poner en marcha un servidor web en esa VM.

## Configura Aplicaciones Elásticas con Ajuste de Escala Automático

En Google Cloud, **Compute Engine** ofrece una función conocida como **ajuste de escala automático**, que permite ajustar dinámicamente el número de máquinas virtuales (VMs) en función de las métricas de carga. Esto es útil para adaptarse a las fluctuaciones en el tráfico o demanda de recursos.

### Características Principales:
- **Ajuste de Escala Automático**:
  - Las VMs se agregan o eliminan de una aplicación de acuerdo con las métricas de carga, lo que optimiza el rendimiento y el uso de recursos.
  - También implica el balanceo del tráfico entrante entre las VMs disponibles.

- **Escalado Horizontal vs. Vertical**:
  - Aunque Compute Engine permite la escalabilidad vertical (ajustando los recursos de una única VM), muchos clientes prefieren **escalar horizontalmente**, añadiendo más VMs según la demanda.

- **Balanceo de Carga**:
  - Google Cloud utiliza su **nube privada virtual (VPC)** para proporcionar varios tipos de balanceo de carga que ayudan a distribuir el tráfico de manera eficiente entre las instancias.

- **Tipos de Máquinas**:
  - Puedes elegir entre **tipos de máquinas predefinidos** o crear **tipos personalizados** para adaptar las VMs a tus necesidades.
  - Las VMs de gran tamaño son ideales para tareas de procesamiento intensivo, como bases de datos en memoria o análisis con uso intensivo de CPU.

- **Restricciones**:
  - La cantidad máxima de CPUs por VM depende de su "familia de máquinas" y está limitada por la cuota disponible para el usuario en cada zona.

Para más detalles sobre los tipos de máquinas disponibles, visita [tipos de máquinas en Compute Engine](https://cloud.google.com/compute/docs/machine-types).

## Explora PaaS con App Engine

Google App Engine es una plataforma completamente administrada y sin servidores que permite desarrollar aplicaciones altamente escalables sin preocuparse por la infraestructura subyacente.

---

### **¿Qué es App Engine?**
- **Plataforma gestionada** que permite concentrarte en la escritura de código sin gestionar servidores, clústeres o infraestructura.
- Ideal para aplicaciones de alta disponibilidad y rápida salida al mercado.
- Automatiza la administración de instancias, el ajuste de escala y la recuperación de errores.

---

### **Servicios y APIs Integrados**
- Almacenes de datos NoSQL.
- Memcache y balanceo de cargas.
- Verificaciones de estado, registro de aplicaciones y autenticación de usuarios.
- Kits de desarrollo (SDKs) para desarrollo local, implementación y administración.

---

### **Entornos de App Engine**
App Engine ofrece dos tipos de entornos: **Estándar** y **Flexible**.

**1. Entorno Estándar**
- Basado en contenedores predefinidos que ejecutan aplicaciones en la infraestructura de Google.
- **Características**:
  - Escalamiento automático y balanceo de cargas.
  - Tareas programadas y listas de tareas en cola asíncronas.
  - Restricciones de zona de pruebas para mayor seguridad y distribución.
- **Lenguajes soportados**: Versiones específicas de Java, Python, PHP, Go, Node.js y Ruby.
- **Uso**: Ideal para aplicaciones que se beneficien de tiempos de inicio rápidos (segundos) con menos acceso a la infraestructura.
- **Limitaciones**:
  - No permite usar SSH ni escribir en discos locales.
  - El costo incluye un nivel gratuito, pero se paga por clase de instancia con cierre automático.

---

**2. Entorno Flexible**
- Basado en **contenedores de Docker** que se ejecutan en VMs gestionadas por Compute Engine.
- **Características**:
  - Mayor flexibilidad para personalizar el entorno de ejecución y el sistema operativo mediante Dockerfiles.
  - Compatible con microservicios, bases de datos SQL/NoSQL, Memcache, y más.
- **Lenguajes soportados**: Python, Java, Go, Node.js, PHP y Ruby (con soporte para múltiples versiones y entornos personalizados).
- **Uso**: Ideal para aplicaciones que requieren mayor control sobre la infraestructura o configuración personalizada.
- **Ventajas**:
  - Permite SSH y uso de discos locales.
  - Admite software de terceros y llamadas directas a la red.
- **Costos**: Basado en la asignación de recursos por hora sin cierre automático.

---

### **Diferencias Clave entre Entornos**
| Característica            | Estándar                          | Flexible                          |
|---------------------------|------------------------------------|-----------------------------------|
| **Tiempo de Inicio**      | Segundos                          | Minutos                           |
| **Acceso a Infraestructura** | Restringido                      | Completo                          |
| **SSH**                   | No                                | Sí                                |
| **Disco Local**           | No                                | Sí                                |
| **Costo**                 | Clase de instancia con cierre automático | Recursos asignados por hora |

---

### **Comparación con Kubernetes**
- **Entorno Estándar**: Máximo control automatizado para apps web/móviles.
- **Entorno Flexible**: Punto medio con flexibilidad y control.
- **Google Kubernetes Engine**: Ofrece la máxima flexibilidad para gestionar cargas de trabajo complejas con Kubernetes.

---

Con **App Engine**, puedes desarrollar, implementar y escalar aplicaciones fácilmente mientras Google gestiona los aspectos complejos de la infraestructura.

## **Lab Práctico: Implementación de una App con App Engine**

En este ejercicio, aprenderás a implementar una pequeña aplicación utilizando **App Engine**. El lab está diseñado para familiarizarte con el flujo básico de desarrollo, prueba e implementación en la plataforma.

---

### **Actividades en el Lab: "App Engine: Qwik Start - Python"**

1. **Descargar una Aplicación**
   - Obtendrás una aplicación ya desarrollada para comenzar rápidamente.
   - El código incluirá una funcionalidad básica para mostrar un mensaje corto.

2. **Probar la Aplicación**
   - Ejecutarás la aplicación localmente para asegurarte de que funciona correctamente antes de implementarla.

3. **Implementar la Aplicación**
   - Subirás la aplicación a App Engine.
   - Configurarás su despliegue en la nube y la probarás en un entorno en línea.

---

Este lab te ayudará a entender el flujo básico de trabajo con App Engine y a poner en práctica conceptos clave como:
- Uso del SDK de App Engine.
- Configuración del entorno.
- Implementación y prueba de aplicaciones en la nube.

## **Programas Controlados por Eventos con Cloud Functions**

### **¿Qué es Cloud Functions?**
- **Cloud Functions** es un servicio sin servidor que permite ejecutar código en respuesta a eventos.
- Ideal para aplicaciones con lógica basada en eventos.
- Permite manejar funciones pequeñas y específicas sin necesidad de administrar servidores o entornos de ejecución.

---

### **Funcionamiento de Cloud Functions**
1. **Controlado por eventos:**
   - Responde automáticamente a eventos, como la subida de una imagen o mensajes de Pub/Sub.
   - Ejemplo: Procesar imágenes subidas para cambiar el tamaño de miniaturas o convertir formatos.

2. **Procesamiento ligero y asíncrono:**
   - Diseñado para manejar pequeñas unidades de lógica empresarial.
   - Se ejecuta solo cuando es necesario, optimizando recursos y costos.

3. **Facturación basada en uso:**
   - Paga solo por el tiempo de ejecución del código, con una precisión de 100 ms.

---

### **Características Principales**
- **Lenguajes soportados:** JavaScript (Node.js), Python y Go.
- **Integraciones:**
  - **Eventos asíncronos:** Integración con servicios como Cloud Storage y Pub/Sub.
  - **Invocación síncrona:** Ejecución a través de solicitudes HTTP.
- **Entorno administrado:** Las funciones se ejecutan en un entorno Node.js gestionado por Google Cloud.

---

**Ejemplo de Uso**
1. Usuario sube una imagen.
2. Cloud Functions detecta el evento.
3. Ejecuta tareas como:
   - Cambiar el formato de la imagen.
   - Crear miniaturas.
   - Guardar los archivos procesados en un repositorio.

## **Lab Práctico: "Cloud Functions: Qwik Start - Command Line"**

### **Objetivos del Lab**
1. **Crear una Cloud Function:** 
   - Usarás **Cloud Shell** para definir y configurar la función.
   
2. **Implementar y probar la función:**
   - Implementarás la función en Google Cloud y realizarás pruebas para asegurarte de que responde correctamente.

3. **Consultar registros:**
   - Aprenderás a acceder a los registros generados por la Cloud Function para monitorear su comportamiento y depurar errores.

---

### **Herramientas Utilizadas**
- **Cloud Shell:** Línea de comandos integrada en Google Cloud para crear y gestionar recursos.
- **Cloud Functions:** Plataforma sin servidor para ejecutar código en respuesta a eventos.

---

### **Resultado Final**
Al completar este lab, habrás implementado y probado una Cloud Function funcional, aprendiendo los pasos básicos para configurar y monitorear funciones en Google Cloud.

## **Aloja en Contenedores y organiza apps con Google Kubernetes Engine (GKE)**

### **Introducción**
- Esta sección cubre la creación y uso de contenedores, así como su implementación y organización con Google Kubernetes Engine (GKE).
- GKE combina la flexibilidad de la Infraestructura como Servicio (IaaS) y la facilidad de uso de la Plataforma como Servicio (PaaS).

---

**Infraestructura como Servicio (IaaS)**
- Permite compartir recursos de hardware usando máquinas virtuales (VMs).
- Cada VM incluye un sistema operativo completo, lo cual puede ser lento y costoso para escalar.

**Plataforma como Servicio (PaaS)**
- Proporciona acceso a servicios de programación que escalan automáticamente con la demanda, pero con menor flexibilidad para personalizar la arquitectura.

**Contenedores**
- Un contenedor es una unidad ligera que empaqueta código y sus dependencias con una capa de abstracción del sistema operativo y hardware.
- Se inicia rápidamente (como un proceso) y escala eficientemente, combinando la flexibilidad de IaaS con la escalabilidad de PaaS.
- Los contenedores hacen que el código sea ultraportátil y fácil de transferir entre entornos de desarrollo, prueba y producción.

---

### **Kubernetes y GKE**
**Kubernetes**
- Herramienta de código abierto para la organización de contenedores en clústeres, inspirada en los sistemas internos de Google.
- Permite:
  - Administrar redes y almacenamiento de contenedores.
  - Implementar actualizaciones y reversiones.
  - Supervisar y gestionar el estado de contenedores y hosts.
  
**Google Kubernetes Engine (GKE)**
- Entorno administrado para implementar aplicaciones alojadas en contenedores.
- Basado en Kubernetes, ofrece:
  - Escalabilidad automática basada en especificaciones como CPU y memoria.
  - Flexibilidad para trabajar en infraestructuras locales, híbridas o en la nube pública.
  - Innovaciones en productividad, automatización y eficiencia de recursos.

---

### **Beneficios de los Contenedores**
1. **Escalabilidad:** 
   - Inician rápidamente y pueden replicarse en segundos.
2. **Portabilidad:** 
   - Ejecutan código en cualquier plataforma que soporte contenedores.
3. **Reducción de costos:** 
   - Son más ligeros que las VMs, permitiendo un uso eficiente de recursos.
4. **Facilidad de desarrollo y mantenimiento:** 
   - Simplifican la solución de problemas, actualizaciones y despliegues.

---

### **Herramientas Relacionadas**
- **Docker:** 
  - Utilizado para empaquetar aplicaciones y sus dependencias en contenedores.
- **GKE:** 
  - Automatiza la organización y escalabilidad de contenedores de Docker en Google Cloud.
- **Kubernetes:** 
  - Administra clústeres de contenedores tanto en la nube como en entornos locales.

---

### **Ejemplos de Uso**
- Escalado rápido de servidores web.
- Implementación de aplicaciones basadas en microservicios.
- Ejecución modular y escalable de cargas de trabajo en múltiples hosts.

## **Lab: "Kubernetes Engine: Qwik Start"**

### **Actividades a realizar:**
1. **Establecer una zona de procesamiento predeterminada.**
   - Configurar la región donde se ejecutará el clúster.

2. **Crear un clúster de GKE.**
   - Configurar y lanzar un clúster para organizar y gestionar los contenedores.

3. **Obtener credenciales de autenticación para el clúster.**
   - Acceder al clúster mediante credenciales generadas automáticamente.

4. **Implementar una aplicación en el clúster.**
   - Desplegar y ejecutar una aplicación alojada en contenedores dentro del clúster.

---

Este laboratorio proporciona práctica práctica en la creación y administración de aplicaciones con GKE, destacando las capacidades de escalabilidad y organización de contenedores.

## **Computacion sin servidores administrada con Cloud Run**

### **¿Qué es Cloud Run?**
Cloud Run es una plataforma de procesamiento sin servidores para ejecutar contenedores sin estado con eventos de **Pub/Sub** o solicitudes web.  
- **Modelo sin servidores**: Permite enfocarse en desarrollar aplicaciones sin preocuparse por la administración de infraestructura.
- **Basado en Knative**: Tecnología abierta que facilita mover cargas de trabajo entre entornos y plataformas.

### **Características principales:**
1. **Escalabilidad automática:**
   - Escala verticalmente desde cero casi al instante.
   - Solo se pagan los recursos utilizados (con una precisión de 100 ms).

2. **Flujo de trabajo del desarrollador:**
   - **Escribe la aplicación**: Compatible con lenguajes como Java, Python, Node.js, Go, PHP, C++, entre otros.
   - **Crea y empaqueta la imagen del contenedor.**
   - **Implementa la imagen en Cloud Run**: Obtén una URL HTTPS única para tu aplicación.

3. **Opciones de flujo de trabajo:**
   - **Basado en contenedores**: Total flexibilidad y transparencia para configurar qué se incluye en la imagen.
   - **Basado en código fuente**: Cloud Run compila y empaqueta automáticamente la aplicación mediante **Buildpacks**.

4. **Administración simplificada:**
   - Gestión automática de certificados SSL y terminación segura.
   - Subdominio único predeterminado (*run.app*) o uso de dominios personalizados.

### **Ventajas de Cloud Run:**
- **Pago por uso real**: Si un contenedor no controla solicitudes, no se paga.
- **Escalabilidad inmediata**: Ideal para aplicaciones con demandas variables.
- **Flexibilidad para ejecutar diferentes tipos de aplicaciones**: Compatible incluso con lenguajes menos comunes.

### **Limitaciones actuales:**
- Hasta **4 CPUs virtuales** y **8 GB de memoria** por contenedor.

### **Casos de uso ideales:**
- Aplicaciones web y APIs que necesitan escalar rápidamente.
- Cargas de trabajo intermitentes donde no se justifica pagar por infraestructura inactiva.
- Migración de aplicaciones heredadas o de lenguajes poco comunes a la nube sin complicaciones.

Cloud Run combina lo mejor de la flexibilidad de los contenedores con la simplicidad del modelo sin servidores.

# **Cuestionario**

**1. ¿Cuál de estas opciones es una plataforma de procesamiento administrada que permite ejecutar contenedores sin estado mediante solicitudes web o eventos de Pub/Sub?**
- ❌ App Engine  
- **✅ Cloud Run**
- ❌ Google Kubernetes Engine  
- ❌ Cloud Functions  


---

**2. ¿Qué entorno de App Engine se basa en instancias de contenedores preconfiguradas?**
- **✅ Entorno estándar**
- ❌ El entorno estándar y el flexible  
- ❌ Entorno flexible  


---

**3. ¿Cuál de estas opciones es un entorno de ejecución liviano, sin servidores y completamente administrado para compilar y conectar servicios de nube?**
- **✅ Cloud Functions**
- ❌ App Engine  
- ❌ Compute Engine  
- ❌ Google Kubernetes Engine  


---

**4. ¿Cuál es la función de Compute Engine que permite agregar o quitar VMs de una aplicación según las métricas de carga?**
- **✅ Ajuste de escala automático**
- ❌ Protocolo NTP  
- ❌ Discos persistentes  
- ❌ Balanceo de cargas  


---

**5. ¿Qué servicio de procesamiento se podría considerar como IaaS?**
- ❌ Cloud Functions  
- **✅ Compute Engine**
- ❌ App Engine  
- ❌ Google Kubernetes Engine  


---

**6. ¿Cuál de las siguientes opciones es un entorno administrado para implementar aplicaciones alojadas en contenedores?**
- ❌ Cloud Functions  
- ❌ Cloud Run  
- **✅ Google Kubernetes Engine**
- ❌ App Engine  

## **Resumen del Módulo: "Use Google Cloud to Build Your Apps"**

### **Temas abordados:**

1. **Exploración del rol de las opciones de procesamiento en la nube.**  
   Comprendiste cómo las diferentes opciones de procesamiento permiten crear soluciones adaptadas a las necesidades específicas de cada proyecto.

2. **Compilación y administración de máquinas virtuales.**  
   Aprendiste a crear y gestionar máquinas virtuales, destacando su flexibilidad y utilidad en entornos personalizados.

3. **Construcción de aplicaciones elásticas con ajuste de escala automático.**  
   Descubriste cómo las aplicaciones pueden adaptarse automáticamente a las variaciones en la demanda utilizando ajustes de escala.

4. **Opciones de PaaS con App Engine.**  
   Exploraste cómo App Engine facilita el desarrollo y despliegue de aplicaciones mediante una plataforma como servicio (PaaS).

5. **Creación de servicios controlados por eventos con Cloud Functions.**  
   Examinaste cómo Cloud Functions permite ejecutar código en respuesta a eventos, simplificando el desarrollo de servicios sin servidores.

6. **Alojamiento en contenedores y organización de aplicaciones con Google Kubernetes Engine (GKE).**  
   Identificaste cómo GKE gestiona y organiza aplicaciones basadas en contenedores, proporcionando escalabilidad y orquestación.

7. **Desarrollo e implementación de aplicaciones escalables alojadas en contenedores con Cloud Run.**  
   Estudiaste cómo Cloud Run permite ejecutar aplicaciones en contenedores de forma escalable y sin administración de servidores.

---

