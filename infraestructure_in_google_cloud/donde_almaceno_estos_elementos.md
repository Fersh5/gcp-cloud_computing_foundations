# **"Where do I store this stuff?" - Google Cloud Computing Foundations**

### **Objetivos del Módulo:**
En este módulo aprenderás sobre las opciones de almacenamiento y bases de datos disponibles en Google Cloud, cubriendo tanto almacenamiento estructurado como no estructurado.

### **Actividades del Módulo:**
1. **Explorarás las diferentes opciones de almacenamiento de Google Cloud.**
2. **Aprenderás a diferenciar entre almacenamiento estructurado y no estructurado en la nube.**
3. **Examinarás cómo usar Cloud Storage para almacenar datos no estructurados.**
4. **Explorarás el caso de uso de opciones de almacenamiento relacionales y NoSQL e identificarás las opciones disponibles en Google Cloud.**

### **Temario del Módulo:**
1. **Opciones de almacenamiento en la nube:**
   - Exploración del almacenamiento estructurado y no estructurado.

2. **Uso de Cloud Storage:**
   - Aprovechamiento de Cloud Storage para almacenar datos no estructurados.
   - Completarás un lab práctico con actividades aplicables a Cloud Storage.

3. **Servicios administrados de SQL:**
   - Comprensión del uso de servicios de SQL administrados.
   - Exploración de Cloud SQL, donde crearás una instancia de MySQL, te conectarás a ella y realizarás operaciones básicas de SQL usando la consola de Cloud y el cliente MySQL.

4. **Opciones NoSQL:**
   - Examinación de Cloud Spanner y otras opciones NoSQL.

5. **Uso de Firestore:**
   - Descubrimiento de Firestore como base de datos de documentos completamente administrada, escalable y sin servidores.

6. **Cloud Bigtable:**
   - Análisis de Cloud Bigtable como opción NoSQL.

7. **Finalización del Módulo:**
   - El módulo concluirá con un breve cuestionario y un resumen de los temas abordados.

---

## **Opciones de Almacenamiento en Google Cloud**

### **Importancia del Almacenamiento en las Aplicaciones**
Toda aplicación requiere un sistema para almacenar datos, ya sea contenido multimedia, datos de sensores o información proveniente de distintas aplicaciones. Cada carga de trabajo tiene necesidades específicas, lo que implica la necesidad de diversas soluciones de almacenamiento.

### **Opciones de Almacenamiento y Bases de Datos en Google Cloud**
Google Cloud ofrece una amplia gama de servicios de almacenamiento administrados, diseñados para ser escalables, confiables y fáciles de usar. Estos servicios permiten ahorrar costos, acelerar lanzamientos y optimizar datos para análisis avanzados.

#### **Principales Servicios de Google Cloud:**
- **Cloud Storage:** Almacenamiento de objetos elástico.
- **Cloud SQL:** Base de datos relacional para MySQL y PostgreSQL.
- **Cloud Spanner:** Base de datos relacional distribuida globalmente.
- **Firestore:** Base de datos NoSQL escalable y sin servidores.
- **Cloud Bigtable:** Base de datos NoSQL para grandes volúmenes de datos.

### **Casos de Uso Comunes de Cloud Storage**
1. **Almacenamiento y entrega de contenido:**
   - Ideal para imágenes, videos y otros medios que deben entregarse rápidamente a usuarios finales.
   - Se apoya en la red global de Google para garantizar una experiencia ágil y fluida.

2. **Almacenamiento para análisis y procesamiento de datos:**
   - Permite usar herramientas estadísticas para procesar grandes conjuntos de datos, como análisis de IoT o secuenciación genómica.

3. **Almacenamiento de archivos y copias de seguridad:**
   - Reduce costos migrando datos de acceso infrecuente a almacenamiento más económico.
   - Garantiza recuperación en caso de pérdida de datos locales.

### **Enfoque en Bases de Datos**
Google Cloud prioriza:
1. **Migración de bases de datos existentes:** 
   - Facilita la migración de MySQL y PostgreSQL a **Cloud SQL**.
2. **Innovación en la nube:**
   - Apoya a los usuarios en la construcción o reconstrucción de aplicaciones para dispositivos móviles y en la planificación para el crecimiento futuro.

Con estas soluciones, Google Cloud ayuda a los desarrolladores y empresas a enfocarse en sus necesidades específicas de almacenamiento, minimizando el tiempo y esfuerzo asociados con la infraestructura.

## **Almacenamiento de Datos Estructurados y No Estructurados**

### **Datos No Estructurados**
Los datos no estructurados son aquellos que no se almacenan en un formato tabular, como tablas o bases de datos relacionales. Representan aproximadamente el **80% de los datos existentes** y son más difíciles de procesar o analizar con métodos tradicionales debido a la ausencia de identificadores internos. 

#### **Ejemplos de Datos No Estructurados:**
- Documentos
- Imágenes
- Archivos de audio y video
- Correos electrónicos
- Presentaciones
- Páginas web

#### **Características Clave:**
- Carecen de un formato organizado.
- Se utilizan para minería de datos y análisis multimedia.
- Idóneos para servicios como **Cloud Storage**, que permite el almacenamiento de objetos no estructurados.

---

### **Datos Estructurados**
Los datos estructurados están organizados en tablas con filas y columnas, como en hojas de cálculo o bases de datos relacionales. Este formato permite capturar, analizar y acceder a los datos de manera sencilla.

#### **Ejemplos de Datos Estructurados:**
- Nombres y direcciones
- Números de contacto
- Fechas
- Datos de facturación

#### **Ventajas:**
- Son interpretados fácilmente por lenguajes de programación.
- Pueden ser manipulados rápidamente mediante consultas SQL.
- Organizadores y definidos claramente.

---

### **Tipos de Cargas de Trabajo con Datos Estructurados**
1. **Cargas de Trabajo Transaccionales:**
   - Provienen de sistemas de procesamiento de transacciones en línea (OLTP).
   - Diseñados para inserciones y actualizaciones rápidas.
   - Consultas estandarizadas que afectan a pocos registros.
   - Recomendaciones:
     - **Cloud SQL:** Ideal para escalabilidad local o regional.
     - **Cloud Spanner:** Escalabilidad global.
     - **Firestore:** Base de datos transaccional NoSQL orientada a documentos para acceso sin SQL.

2. **Cargas de Trabajo Analíticas:**
   - Provienen de sistemas de procesamiento analítico en línea (OLAP).
   - Enfocados en leer y analizar grandes conjuntos de datos completos.
   - Requieren consultas complejas como agregaciones.
   - Recomendaciones:
     - **BigQuery:** Ideal para análisis de datos a escala de petabytes con SQL.
     - **Bigtable:** Solución NoSQL escalable para aplicaciones en tiempo real con alta capacidad de procesamiento y baja latencia.

---

### **Resumen de Herramientas según Tipo de Datos y Cargas de Trabajo**
| **Tipo de Datos**     | **Cargas de Trabajo**       | **Herramientas Recomendadas**                                      |
|-----------------------|----------------------------|-------------------------------------------------------------------|
| **No estructurados**  | Almacenamiento general     | Cloud Storage                                                   |
| **Estructurados**     | Transaccionales (SQL)      | Cloud SQL, Cloud Spanner                                         |
| **Estructurados**     | Transaccionales (NoSQL)    | Firestore                                                       |
| **Estructurados**     | Analíticas (SQL)           | BigQuery                                                        |
| **Estructurados**     | Analíticas (NoSQL)         | Bigtable                                                        |

## **Cloud Storage: Almacenamiento de Datos No Estructurados**

### **¿Qué es Cloud Storage?**
Cloud Storage es un servicio escalable y completamente administrado de Google Cloud para almacenar datos no estructurados. Se utiliza principalmente para almacenar **objetos binarios grandes (BLOBs)**, como videos, fotos y archivos de audio.

#### **Casos de Uso de Cloud Storage:**
- **Entrega de contenido** de sitios web.
- **Almacenamiento de datos** para archivado y recuperación ante desastres.
- **Distribución de objetos de datos grandes** mediante descarga directa.
- **Resultados intermedios** en flujos de procesamiento de datos.

---

### **Almacenamiento de Objetos**
- **Definición:** Administra datos como **objetos empaquetados** con:
  - Forma binaria de los datos.
  - Metadatos relevantes (fecha de creación, permisos, autor, etc.).
  - **Identificador único global** (formato URL para integración con tecnologías web).
- **Ejemplos:** Videos, imágenes, grabaciones de audio.
- **Inmutabilidad:** No se puede editar un objeto, sino que se crea una nueva versión ante cambios.

#### **Control de Versiones**
- **Predeterminado:** Las nuevas versiones reemplazan a las anteriores.
- **Con versiones habilitadas:** 
  - Guarda un historial de modificaciones.
  - Permite restaurar objetos a estados previos.
  - Facilita la eliminación permanente de versiones específicas.

---

### **Clases de Almacenamiento en Cloud Storage**
Los datos se clasifican y facturan según la **clase de almacenamiento** seleccionada:

1. **Standard Storage:**
   - Datos de acceso frecuente o "activos".
   - Ideal para almacenamiento a corto plazo.
   - Baja latencia.

2. **Nearline Storage:**
   - Datos de acceso poco frecuente (modificados o leídos una vez al mes).
   - Ejemplo: Copias de seguridad, archivado de datos, contenido multimedia de larga duración.

3. **Coldline Storage:**
   - Datos de acceso muy poco frecuente (modificados o leídos una vez cada 90 días).
   - Menor costo que Nearline.

4. **Archive Storage:**
   - Datos de acceso mínimo (menos de una vez al año).
   - **Costo más bajo**, diseñado para:
     - Archivado de datos.
     - Copias de seguridad en línea.
     - Recuperación ante desastres.
   - Duración mínima de almacenamiento: **365 días**.

---

### **Características Comunes de las Clases de Almacenamiento**
- **Almacenamiento ilimitado:** Sin tamaño mínimo de objetos.
- **Accesibilidad global:** Latencia baja y alta durabilidad.
- **Redundancia geográfica:** Protección contra desastres mediante centros de datos distribuidos.
- **Compatibilidad uniforme:** Seguridad, herramientas, APIs y políticas de ciclo de vida.

---

### **Organización en Buckets**
- **Buckets:** Contenedores únicos a nivel global que almacenan los datos.
- **Configuración:**
  - **Nombre único**.
  - **Ubicación geográfica:** Minimiza la latencia eligiendo regiones cercanas a los usuarios.
- **Ejemplo:** Elegir una región europea si los usuarios están en Europa.

---

### **Administración del Ciclo de Vida de Objetos**
Cloud Storage permite automatizar la gestión de objetos según reglas personalizadas:
- Eliminar objetos mayores a **365 días**.
- Borrar objetos creados antes de una fecha específica.
- Mantener solo las **3 versiones más recientes** de cada objeto.

---

### **Integración con Otros Servicios de Google Cloud**
Cloud Storage se integra estrechamente con productos como:
- **BigQuery y Cloud SQL:** Importar/exportar tablas.
- **App Engine:** Almacenamiento de registros y objetos para aplicaciones.
- **Compute Engine:** Imágenes y secuencias de inicio.
- **Firestore:** Copias de seguridad.

Cloud Storage es una solución versátil para manejar datos no estructurados con alta escalabilidad, durabilidad y flexibilidad para casos de uso empresariales y personales.

## **Ejercicio Práctico: Cloud Storage con CLI/SDK**

En este laboratorio, aprenderás a interactuar con **Cloud Storage** utilizando la línea de comandos de Google Cloud. Realizarás varias tareas relacionadas con la gestión de buckets y objetos.

---

### **Tareas del Lab**

1. **Crear un bucket de almacenamiento**
   - Usarás el comando `gcloud storage buckets create` para crear un bucket único a nivel global.

2. **Subir un objeto a un bucket**
   - Subirás archivos desde tu máquina local al bucket usando `gcloud storage`.

3. **Descargar un objeto de un bucket**
   - Recuperarás un archivo desde Cloud Storage a tu máquina local con el comando `gcloud storage cp`.

4. **Copiar un objeto a una carpeta del bucket**
   - Crearás una **carpeta** dentro del bucket y copiarás objetos a ella.

5. **Enumerar el contenido de un bucket o carpeta**
   - Usarás `gcloud storage ls` para listar archivos y carpetas dentro del bucket.

6. **Enumerar detalles de un objeto**
   - Obtendrás información como tamaño, fecha de creación y permisos del objeto.

7. **Permitir acceso público a un objeto**
   - Harás que un objeto sea accesible públicamente configurando permisos de acceso con `gcloud storage`.

---

### **Comandos Útiles**
- **Crear un bucket:**
  ```bash
  gcloud storage buckets create BUCKET_NAME --location=REGION

## **Servicios Administrados de SQL en Google Cloud**

En esta sección, conocerás qué es una base de datos y cómo los servicios administrados de SQL en Google Cloud, como **Cloud SQL** y **Cloud Spanner**, facilitan su uso para diferentes casos.

---

### **¿Qué es una Base de Datos?**
Una base de datos es una colección de información organizada para facilitar su administración y acceso. Es utilizada por aplicaciones para:

- **Gestionar transacciones:** Comprar boletos, completar informes de gastos.
- **Almacenar datos:** Fotos, historias clínicas.
- **Responder preguntas dinámicas:**
  - ¿Cuál es el nombre del usuario según su información de acceso?
  - ¿Cuáles son los productos más vendidos este mes?
  - ¿Qué anuncio mostrarle al usuario?

Las bases de datos permiten tanto la **lectura** como la **escritura** de datos, proporcionando respuestas rápidas y eficientes.

---

### **Bases de Datos Relacionales**
Las bases de datos relacionales son ampliamente utilizadas y se basan en el **modelo relacional de datos**. Estas son ideales cuando:

1. Tienes un modelo de datos bien estructurado.
2. Necesitas **transacciones** (consistencia y confiabilidad en cambios de datos).
3. Requieres **combinaciones complejas** de datos entre varias tablas.

#### **Características:**
- Utilizan el **Lenguaje de Consulta Estructurado (SQL)**.
- Excelentes para aplicaciones que necesitan organizar datos en tablas interrelacionadas.

---

### **Servicios Administrados en Google Cloud**

#### **1. Cloud SQL**
- **Uso:** Ideal para escalar bases de datos a nivel local o regional.
- **Compatibilidad:** MySQL, PostgreSQL, SQL Server.
- **Casos de uso:**
  - Aplicaciones web y móviles.
  - Sistemas de gestión de contenidos.
  - Análisis de datos relacionales.

#### **2. Cloud Spanner**
- **Uso:** Diseñado para bases de datos globales con consistencia transaccional.
- **Características:**
  - Escalabilidad horizontal sin perder consistencia.
  - Latencia baja a nivel global.
- **Casos de uso:**
  - Sistemas financieros.
  - Comercio electrónico a gran escala.
  - Aplicaciones de misión crítica.

---

### **Diferencias Clave**

| Característica         | **Cloud SQL**                      | **Cloud Spanner**                  |
|------------------------|------------------------------------|------------------------------------|
| **Escalabilidad**      | Regional                          | Global                            |
| **Modelo de Consistencia** | Fuerte (local)                   | Fuerte (global)                   |
| **Compatibilidad SQL** | MySQL, PostgreSQL, SQL Server     | SQL propio (similar a ANSI SQL)   |
| **Casos de Uso**       | Aplicaciones medianas o locales   | Aplicaciones globales y críticas |

---

Google Cloud simplifica el uso de bases de datos relacionales administradas, permitiendo a las empresas enfocarse en sus aplicaciones sin preocuparse por el mantenimiento o escalabilidad de sus bases de datos.

## **Explora Cloud SQL: Bases de Datos Relacionales Completamente Administradas**

### **¿Qué es Cloud SQL?**
Cloud SQL es un servicio administrado de Google Cloud que proporciona bases de datos relacionales como:

- **MySQL**
- **PostgreSQL**
- **SQL Server**

Permite a los desarrolladores enfocarse en crear aplicaciones, delegando tareas de mantenimiento y administración al servicio.

---

### **Ventajas de Cloud SQL**

1. **Administración Simplificada:**
   - Aplicación de parches y actualizaciones.
   - Gestión automática de copias de seguridad.
   - Configuración de replicaciones.

2. **Sin Instalaciones ni Mantenimiento:**
   - No requiere instalación de software adicional.
   - Google se encarga del mantenimiento del servicio.

3. **Escalabilidad Vertical:**
   - Hasta **96 núcleos de CPU**.
   - Más de **624 GB de RAM**.
   - **64 TB** de almacenamiento.

4. **Seguridad y Protección de Datos:**
   - **Cifrado de datos**:
     - En tránsito (usando las redes internas de Google).
     - En reposo (en tablas, archivos temporales y copias de seguridad).
   - **Firewall de red** para controlar el acceso.

5. **Replicación Automática:**
   - Instancias principales y externas, incluyendo:
     - **MySQL externo**.

6. **Copias de Seguridad Administradas:**
   - Garantiza protección y disponibilidad.
   - Cada instancia incluye hasta **siete copias de seguridad**.

---

### **Casos de Uso para Cloud SQL**
- Aplicaciones web que requieren bases de datos relacionales.
- Sistemas de gestión de contenido.
- Proyectos de análisis con requisitos moderados de escalabilidad.
- Soluciones empresariales que priorizan seguridad y confiabilidad.

Cloud SQL ofrece una solución completa, confiable y fácil de administrar para proyectos que necesitan bases de datos relacionales, adaptándose a diversas necesidades empresariales.

## **Lab Práctico: Cloud SQL para MySQL - Qwik Start**

### **¿Qué aprenderás en este lab?**
Este laboratorio te permitirá explorar las funciones básicas de Cloud SQL para MySQL, mediante tareas prácticas que incluyen:

1. **Crear una instancia de Cloud SQL.**
2. **Conectarte a la instancia utilizando el cliente `mysql` desde Cloud Shell.**
3. **Realizar operaciones básicas en SQL.**

---

### **Actividades del Lab**

1. **Crear una Instancia de Cloud SQL:**
   - Configurar los parámetros iniciales para desplegar una base de datos MySQL completamente administrada.

2. **Conexión a la Instancia con el Cliente `mysql`:**
   - Utilizar Cloud Shell para acceder a la base de datos y ejecutar consultas SQL.

3. **Operaciones Básicas de SQL:**
   - Ejecutar comandos básicos como:
     - Crear y modificar tablas.
     - Insertar, actualizar y eliminar registros.
     - Consultar información almacenada.

---

### **Beneficios del Lab**
- Comprender cómo utilizar Cloud SQL para gestionar bases de datos MySQL.
- Practicar comandos esenciales de SQL en un entorno administrado.
- Experimentar con la integración entre Cloud Shell y Cloud SQL.

Para más detalles, busca el lab titulado **“Cloud SQL para MySQL: Qwik Start”** en la plataforma de Google Cloud Skills Boost.

