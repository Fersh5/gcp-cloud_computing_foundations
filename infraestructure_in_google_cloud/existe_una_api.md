# There’s an API for that! - Google Cloud Computing Foundations

### **Objetivo del Módulo**
Este módulo se centra en **compilar aplicaciones con servicios administrados**, abordando los siguientes temas:

#### **Temas Principales**
1. **Propósito y beneficios de las APIs**
   - Exploración de la API REST, el estilo más popular para servicios.

2. **Cloud Endpoints**
   - Herramienta distribuida para la administración de APIs.
   - Incluye un **lab práctico** para implementar una API de muestra con Cloud Endpoints.

3. **Administración de APIs con Apigee**
   - Plataforma para desarrollar y administrar proxies de API.

4. **Google Cloud Pub/Sub**
   - Sistema de mensajería administrado diseñado para arquitecturas distribuidas orientadas a mensajes a gran escala.
   - Casos de uso comunes de servicios administrados.

#### **Actividades del Módulo**
- Dos **labs prácticos**:
  1. Implementación de una API de muestra con Cloud Endpoints.
  2. Exploración de Pub/Sub.
- **Cuestionario breve** para evaluar lo aprendido.
- **Resumen final** de los temas vistos.

## El Propósito de las APIs

### ¿Qué son las APIs?
- **API (Interfaz de Programación de Aplicaciones):** 
  - Una interfaz bien definida que oculta detalles innecesarios y facilita la comunicación entre diferentes recursos de software.
  - Permite cambios en la implementación subyacente siempre que la interfaz permanezca inalterada.

### Propósitos principales de las APIs
1. **Simplificar la comunicación entre recursos de software aislados.**
2. **Crear una estructura universal de comunicación**, abriendo oportunidades para integraciones robustas.
3. **Versionamiento de APIs:**
   - Permite agregar o retirar funciones sin afectar a los consumidores de versiones anteriores.
   - Ejemplo: Versiones 1 y 2 de una API pueden coexistir.

### REST: El estilo más popular para APIs
- **REST (Transferencia de Estado Representacional):**
  - Define un conjunto de restricciones y acuerdos para el diseño de servicios.
  - APIs que cumplen con estas restricciones se llaman **RESTful**.

#### Características de REST
- **Uso de HTTP:** 
  - Operaciones: `GET`, `PUT`, `POST`, `DELETE`.
- **Diseño escalable y duradero**, adaptado a la estructura de la Web.
- **Sin estado:** 
  - No guarda información del estado entre solicitudes, lo que optimiza el funcionamiento en la nube.
- **Seguridad:**
  - Autenticación mediante **OAuth**.
  - Uso de **tokens** para garantizar seguridad.

### Aspectos clave al implementar y administrar APIs
1. **Formato:** 
   - Estándares para describir la interfaz.
2. **Autenticación:**
   - Cómo autenticar servicios y usuarios para invocar la API.
3. **Escalabilidad:** 
   - Garantizar que la API soporte la demanda.
4. **Registro y supervisión:** 
   - Registrar invocaciones y proporcionar métricas de uso.

Las APIs proporcionan un canal de comunicación universal, asegurando la interoperabilidad entre aplicaciones y servicios, incluso cuando estos se actualizan o reescriben, siempre que se respete el estándar acordado.

## Cloud Endpoints

### ¿Qué es Cloud Endpoints?
- **Cloud Endpoints:** 
  - Sistema distribuido para desarrollar, implementar y administrar APIs en cualquier backend de Google Cloud.
  - Utiliza un **proxy de servicio extensible**, que se ejecuta en un contenedor de Docker, para gestionar APIs con baja latencia y alto rendimiento.

## Funcionalidades principales
1. **Soporte integral para APIs:**
   - Proporciona consola de API, hosting, registro, supervisión, y más.
   - Compatible con APIs que usan **OpenAPI** y **gRPC**.
2. **Autenticación robusta:**
   - Compatible con:
     - Autenticación entre servicios.
     - Google Auth, Firebase y Auth0.
3. **Escalabilidad y seguridad:**
   - Maneja altos volúmenes de tráfico.
   - Valida solicitudes y datos de registro mediante herramientas como **Service Management** y **Control del Servicio**.
4. **Monitoreo y métricas:**
   - **Logging** y **Trace:** 
     - Registros detallados.
     - Métricas de tráfico, latencia, tamaños de solicitudes y respuestas, y errores.

## Compatibilidad
- **Backends soportados:**
  - App Engine.
  - Google Kubernetes Engine (GKE).
  - Compute Engine.
- **Clientes soportados:**
  - Android, iOS, JavaScript.

## Beneficios de Cloud Endpoints
- Infraestructura necesaria para:
  - Implementar APIs sólidas y seguras.
  - Escalar de acuerdo con las necesidades del tráfico.
- Herramientas avanzadas para registro y seguimiento, que incluyen:
  - Volumen de tráfico.
  - Tamaños de solicitudes y respuestas.
  - Latencia y errores.

**Cloud Endpoints** es una solución potente y flexible para gestionar APIs, asegurando escalabilidad, seguridad y facilidad de implementación en múltiples plataformas.

## Laboratorio práctico: "Cloud Endpoints: Qwik Start"

### Descripción
En este laboratorio práctico, obtendrás experiencia práctica con **Cloud Endpoints**, implementando y gestionando una API de muestra utilizando un backend en App Engine.

### Actividades principales
1. **Configurar Cloud Endpoints:**
   - Implementar la configuración inicial de una API en Cloud Endpoints.
2. **Implementar el backend de la API:**
   - Desplegar la aplicación backend que soporta la API.
3. **Enviar solicitudes a la API:**
   - Realizar pruebas de funcionalidad enviando solicitudes a la API.
4. **Supervisar la actividad de la API:**
   - Rastrear el uso y comportamiento de la API mediante herramientas de seguimiento.
5. **Agregar cuotas a la API:**
   - Configurar límites en el uso de la API para controlar el acceso y la carga.

## Objetivo del laboratorio
Proporcionar experiencia práctica en:
- Configuración y despliegue de APIs con **Cloud Endpoints**.
- Monitoreo y gestión de una API para garantizar un uso eficiente y controlado.


## Administración de APIs con Apigee

### Descripción
**Apigee** es una plataforma de Google Cloud diseñada para desarrollar y administrar proxies de API. A diferencia de **Cloud Endpoints**, Apigee está orientada a abordar necesidades empresariales específicas.

### Enfoque principal
- Gestiona problemas empresariales como:
  - Límite de frecuencia.
  - Cuotas de uso.
  - Analítica avanzada de APIs.

### Características clave
1. **Independencia del backend:**
   - Los servicios de backend no necesitan estar alojados en Google Cloud.
2. **Soporte para aplicaciones heredadas:**
   - Ayuda a desglosar aplicaciones monolíticas grandes en microservicios de manera progresiva.
   - Facilita la migración y eventual retiro de aplicaciones heredadas.

### Casos de uso
- Empresas que brindan servicios de software a otras organizaciones.
- Migración progresiva hacia arquitecturas modernas basadas en microservicios.

## Pub/Sub

### Descripción
**Pub/Sub** es un servicio de mensajería y API asíncrono de Google Cloud que admite arquitecturas distribuidas orientadas a los mensajes. Es ideal para manejar grandes volúmenes de datos de múltiples transmisiones y dispositivos.

### Características principales
1. **Diseño distribuido y escalable:**
   - Soporta transmisiones masivas de datos desde dispositivos IoT, videojuegos y aplicaciones.
2. **Entrega garantizada:**
   - Asegura al menos una entrega de mensajes a las aplicaciones suscriptoras.
3. **Global y seguro:**
   - Servicio global predeterminado con encriptación de extremo a extremo.
4. **Arquitectura desacoplada:**
   - Los publicadores y suscriptores están completamente separados.

### Componentes clave
- **Temas:**
  - Recurso con nombre donde los publicadores envían mensajes, similar a una antena de radio.
  - Puede haber:
    - Cero, uno o más publicadores.
    - Cero, uno o más suscriptores.
- **Publicadores y suscriptores:**
  - Los publicadores envían mensajes a temas.
  - Los suscriptores reciben mensajes de los temas para procesarlos.

### Ejemplo práctico
- **Tema: Recursos Humanos (RRHH):**
  - Evento: Contratación de un nuevo empleado.
  - Publicadores: Fuentes de datos de empleados (empleados de tiempo completo y contratistas).
  - Suscriptores: Sistemas downstream como servicios de directorio, activación de insignias y aprovisionamiento de cuentas.

### Integraciones
1. **Dataflow:**
   - Canaliza y transforma mensajes de Pub/Sub para enviarlos a almacenes de datos como **BigQuery**.
2. **Herramientas de análisis y visualización:**
   - **Looker/Looker Studio**: Para supervisar resultados.
   - **Vertex AI**: Ayuda con análisis predictivo y descubrimiento de estadísticas empresariales.
3. **Encadenamiento de temas:**
   - Eventos de Pub/Sub pueden transferirse de un tema a otro.

### Casos de uso
- Transferencia de datos desde sensores IoT.
- Gestión de eventos masivos en tiempo real.
- Arquitecturas desacopladas con múltiples fuentes y receptores de datos.

## Laboratorio: Pub/Sub: Qwik Start - Python

### Objetivo
Aprender a trabajar con **Pub/Sub** en Google Cloud usando la biblioteca cliente de Python. Este laboratorio cubre desde la creación de temas y suscripciones hasta la publicación y extracción de mensajes.

### Actividades del laboratorio

1. **Crear y enumerar un tema en Pub/Sub**
   - **Crear un tema:**
     - Aprende a definir un recurso llamado **tema** donde se enviarán los mensajes.
   - **Enumerar temas:**
     - Listar todos los temas existentes en el proyecto.

2. **Crear y enumerar una suscripción de Pub/Sub**
   - **Crear una suscripción:**
     - Vincular un suscriptor a un tema para recibir mensajes publicados.
   - **Enumerar suscripciones:**
     - Listar todas las suscripciones vinculadas a los temas.

3. **Publicar mensajes para un tema**
   - **Publicar mensajes:**
     - Enviar mensajes al tema usando la biblioteca cliente de Python.
   - **Ejemplo práctico:**
     - Publicar datos como eventos simulados o mensajes personalizados.

4. **Usar un suscriptor de extracción**
   - **Extraer mensajes:**
     - Leer y procesar mensajes individuales desde un tema utilizando un suscriptor.
   - **Validar resultados:**
     - Verificar que los mensajes enviados desde el publicador son recibidos correctamente.

### Herramientas y tecnologías utilizadas
- **Python:** Biblioteca cliente de Pub/Sub.
- **Google Cloud Console:** Para la configuración inicial y supervisión.
- **Pub/Sub:** Servicio principal de mensajería.

### Resultado esperado
Al finalizar el laboratorio, serás capaz de:
- Configurar y administrar temas y suscripciones en Pub/Sub.
- Publicar y extraer mensajes de manera efectiva.
- Integrar Pub/Sub en aplicaciones de Python para manejar flujos de datos asíncronos.

## Cuestionario

**¿Qué plataforma para desarrollar y administrar proxies de API se enfoca específicamente en los problemas empresariales, como el límite de frecuencia, las cuotas y la analítica?**  
- **✅ Apigee Edge**
- ❌ API de REST  
- ❌ Pub/Sub  
- ❌ Cloud Endpoints  


---

**¿Qué significa API?**  
- **✅ Interfaz de programación de aplicaciones**
- ❌ Interfaz de programación asíncrona  
- ❌ Interfaz de programación aplicada  
- ❌ Interfaz de programación artificial  

---

**¿Cuál de estas afirmaciones sobre Pub/Sub es verdadera?**  
- ❌ Pub/Sub no está encriptado.  
- ❌ Pub/Sub requiere aprovisionamiento.  
- **✅ Las APIs de Pub/Sub son de código abierto.**
- ❌ Pub/Sub es regional de forma predeterminada.  

---

**¿Qué sistema de administración de APIs es compatible con aplicaciones que se ejecutan en App Engine, Google Kubernetes Engine y Compute Engine?**  
- **✅ Cloud Endpoints**
- ❌ Apigee  
- ❌ Pub/Sub  
- ❌ API de REST  

## Resumen del Módulo 5: Google Cloud Computing Foundations

En este módulo se cubrieron los siguientes temas:

1. **Propósito y beneficios de las APIs**:
   - Se exploraron las **interfaces de programación de aplicaciones (APIs)** y cómo simplifican la comunicación entre recursos de software diferentes y aislados.

2. **Comparación entre Cloud Endpoints y Apigee**:
   - **Cloud Endpoints**: Ideal para implementar y administrar APIs en Google Cloud, con bajo costo, baja latencia y alto rendimiento.
   - **Apigee**: Orientado a soluciones empresariales, abordando problemas como límites de frecuencia, cuotas y analíticas avanzadas. También se utiliza para desglosar aplicaciones heredadas y facilitar la transición a microservicios.

3. **Introducción a Pub/Sub**:
   - Pub/Sub es una herramienta de **mensajería distribuida** diseñada para arquitecturas distribuidas y orientadas a mensajes a gran escala.
   - Facilita el manejo de grandes volúmenes de datos transmitidos de manera asíncrona desde múltiples fuentes, garantizando fiabilidad y seguridad en la entrega de mensajes.
