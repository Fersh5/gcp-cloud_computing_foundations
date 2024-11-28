# **Módulo 9: Google Cloud Computing Foundations**  
# *You have the data, but what are you doing with it?*

### **Objetivo del Módulo:**
Explorar servicios administrados en la nube para el procesamiento de macrodatos (Big Data) usando Google Cloud.

---

### **Temas Principales:**

#### **1. Introducción a los Servicios Administrados de Macrodatos:**
   - **Definición:** Servicios en la nube para manejar grandes volúmenes de datos.
   - **Ventaja:** No necesitas gestionar infraestructura; Google Cloud administra los recursos.

---

#### **2. Google Cloud Dataproc:**
   - **¿Qué es?** Servicio administrado para ejecutar frameworks como:
     - **Apache Hadoop**
     - **Apache Spark**
   - **Uso:** Facilita el procesamiento y análisis de grandes volúmenes de datos en la nube.
   - **Lab Práctico:**  
     - **Objetivo:** Crear un clúster de Dataproc y realizar tareas usando la consola de Google Cloud y la CLI `gcloud`.

---

#### **3. Google Cloud Dataflow:**
   - **Función:** Crear canalizaciones ETL (Extracción, Transformación y Carga) como servicio administrado.
   - **Lab Prácticos:**
     - **Lab 1:** Usar una plantilla de Dataflow para crear una canalización de transmisión.
     - **Lab 2:** Configurar un entorno de desarrollo en Python:
       - **SDK de Dataflow para Python.**
       - **Ejecutar una canalización de ejemplo desde la consola de Google Cloud.**

---

#### **4. Google BigQuery:**
   - **¿Qué es?** Almacén de datos (Data Warehouse) y motor de estadísticas administrado.
   - **Uso:** Análisis eficiente de grandes conjuntos de datos.
   - **Lab Final:** Explorar Dataproc en detalle y practicar con BigQuery.

---

### **Estructura del Módulo:**
1. **Introducción a los servicios administrados de Big Data.**
2. **Labs sobre Dataproc:**
   - Creación y gestión de clústeres.
3. **Dataflow:**
   - Configuración y práctica con canalizaciones ETL.
4. **BigQuery:**
   - Uso como almacén de datos.
5. **Evaluación final:** Cuestionario corto y resumen de los temas aprendidos.

---

### **Conclusión:**
Este módulo te preparará para comprender y utilizar servicios de procesamiento de Big Data en Google Cloud, aprovechando Dataproc, Dataflow y BigQuery para manejar y analizar grandes volúmenes de datos de manera eficiente.

## **Introducción a los Servicios Administrados de Big Data en Google Cloud**

### **¿Qué son los Macrodatos (Big Data)?**
- **Definición:** Datos de gran volumen que superan la capacidad de las herramientas tradicionales de gestión de datos.
- **Tamaño:** Medidos en petabytes (PB).
  - **1 Petabyte (PB) = 1,000 Terabytes (TB) = 1,000,000 Gigabytes (GB).**
  
#### **Ejemplos de la Escala de un Petabyte:**
- **Almacenamiento:** Sería necesario apilar disquetes hasta una altura equivalente a 12 edificios Empire State.
- **Velocidad de descarga:** Descargar 1 PB en una red 4G tomaría 27 años.
- **Comparaciones:** 
  - Un petabyte es suficiente para almacenar 50 veces la cantidad de datos generados por todos los tweets.
  - También podría almacenar solo 2 microgramos de ADN o un día completo de videos subidos a YouTube.

---

### **Importancia de los Macrodatos para las Empresas:**
- **Objetivo:** Analizar datos almacenados para obtener estadísticas y mejorar las operaciones comerciales.
- **Desafío:** Manejar grandes volúmenes de datos requiere infraestructuras especializadas.

---

### **Servicios Administrados de Macrodatos en Google Cloud:**
Google Cloud ofrece tres servicios principales para el procesamiento de macrodatos:

#### **1. Google Cloud Dataproc:**
   - **Función:** Ejecutar frameworks de código abierto como:
     - **Apache Hadoop**
     - **Apache Spark**
   - **Ventaja:** Facilita la transición a la nube para empresas que ya utilizan estas herramientas.

#### **2. Google Cloud Dataflow:**
   - **Función:** Servicio administrado para la creación de canalizaciones ETL (Extracción, Transformación y Carga).
   - **Uso:** Optimizado para:
     - Procesamiento por lotes a gran escala.
     - Procesamiento continuo de transmisión de datos estructurados y no estructurados.

#### **3. Google BigQuery:**
   - **Función:** Almacén de datos (Data Warehouse) optimizado para análisis de grandes volúmenes de datos.
   - **Capacidades:** Permite realizar consultas SQL rápidas sobre datos no estructurados a escala de petabytes.

---

### **Resumen:**
Este módulo te enseñará cómo usar **Dataproc**, **Dataflow** y **BigQuery** para procesar y analizar macrodatos de manera eficiente en la nube de Google.

## Aprovecha las operaciones de macrodatos con Dataproc 
**Dataproc en Google Cloud: Ejecución de Apache Hadoop y Spark**


### **¿Qué es Dataproc?**
- **Servicio administrado** que facilita la ejecución de:
  - **Apache Hadoop**: Procesamiento distribuido de grandes volúmenes de datos.
  - **Apache Spark**: Motor unificado para procesamiento de datos a gran escala (por lotes y en transmisión).
  
---

### **Principales Características de Dataproc:**

#### **1. Rentable**
- **Costo:** $0.01 por CPU virtual por clúster por hora.
- **Instancias interrumpibles:** Reducen costos al pagar solo por recursos usados.

#### **2. Rápido y Escalable**
- **Tiempo de creación:** Clústeres se inician, escalan y cierran en promedio en **90 segundos** o menos.
- **Configuraciones flexibles:** Soporte para diferentes tipos de máquinas virtuales, discos, y opciones de red.

#### **3. Ecosistema de Código Abierto**
- Compatible con bibliotecas de **Spark** y **Hadoop**.
- Actualizaciones frecuentes de versiones nativas de:
  - **Spark**
  - **Hadoop**
  - **Pig**
  - **Hive**
- Facilita la migración de proyectos existentes.

#### **4. Completamente Administrado**
- Interactúa con clústeres mediante:
  - **Consola de Google Cloud**
  - **Cloud SDK**
  - **API REST**
- **Apagado automático:** Evita costos de clústeres inactivos.

#### **5. Control de Versiones de Imágenes**
- Alterna entre diferentes versiones de **Spark** y **Hadoop** fácilmente.

#### **6. Integración Incorporada**
- Integraciones nativas con:
  - **Cloud Storage**
  - **BigQuery**
  - **Cloud Bigtable**
- Proporciona:
  - **Cloud Logging** y **Cloud Monitoring** para supervisión.
  - Procesamiento de ETL directo en **BigQuery**.

---

### **Casos de Uso de Dataproc:**

#### **1. Procesamiento de Registros Diarios**
- **Situación:** Procesamiento de 50 GB de datos de registros diarios.
- **Solución:**
  - Almacena registros en **Cloud Storage**.
  - Procesa con un clúster **Dataproc** (MapReduce) en menos de 2 minutos.
  - **Clúster efímero:** Se elimina después del procesamiento, reduciendo costos.

#### **2. Escalabilidad y Spark Shell**
- **Situación:** Escalar clústeres Spark usados por analistas.
- **Solución:** Dataproc permite crear clústeres escalables, eliminando puntos únicos de fallo.
- **Ventaja:** Compatible con **Spark Shell**, **PySpark**, y **Spark SQL**.

#### **3. Aprendizaje Automático con Spark MLlib**
- **Situación:** Uso de algoritmos de clasificación con **MLlib** en Spark.
- **Solución:** Dataproc facilita la instalación de MLlib en clústeres personalizados.
  - Permite personalizaciones y automatización mediante acciones de inicialización.
- **Supervisión:** Integrado con **Cloud Logging** y **Cloud Monitoring**.

---

### **Valor de Dataproc:**
- **Optimización de costos:** Paga solo por recursos usados.
- **Simplificación técnica:** Facilita la creación, administración y escalabilidad de clústeres.
- **Productividad:** Permite enfocarse en análisis de datos en lugar de infraestructura.

## **Lab: Dataproc: Qwik Start - Console**

### **Objetivos del Lab:**
1. **Creación de un clúster de Dataproc** usando la consola de Google Cloud.
2. **Ejecución de un trabajo de Apache Spark** en el clúster creado.
3. **Modificación de la cantidad de trabajadores** en el clúster a través de la consola.

---

### **Actividades:**
- Crearás un clúster de Dataproc.
- Enviarás un trabajo al clúster.
- Verás los resultados del trabajo ejecutado.

## **Lab: Dataproc: Qwik Start - LineComands**

### **Objetivos del Lab:**
1. **Creación de un clúster de Dataproc** utilizando la CLI de gcloud.
2. **Ejecución de un trabajo de Apache Spark** en el clúster creado.
3. **Modificación de la cantidad de trabajadores** en el clúster a través de la CLI de gcloud.

---

### **Actividades:**
- Crearás y actualizarás un clúster de Dataproc usando comandos de gcloud.
- Enviarás un trabajo al clúster.
- Verás los resultados del trabajo ejecutado.

## **Compila canalizaciones de ETL con Dataflow**

### **Introducción a Dataflow:**
- **Dataflow** es un servicio completamente administrado de Google Cloud, optimizado para el procesamiento de datos por lotes a gran escala y el procesamiento de transmisión continua.
- Se utiliza para construir **canalizaciones de ETL** (Extracción, Transformación y Carga) que procesan tanto datos por lotes como en tiempo real.

---

### **Diferencias con Dataproc:**
- **Dataproc:** Facilita la migración de implementaciones de macrodatos basadas en Apache Hadoop y Spark a un servicio administrado.
- **Dataflow:** Se centra en el procesamiento de datos fuera del ecosistema Hadoop, especialmente útil para trabajos de transmisión o lotes sin dependencia directa de Hadoop.

---

### **Consideraciones al Diseñar Canalizaciones:**
- **Compatibilidad:** ¿El código de la canalización soporta tanto datos por lotes como de transmisión, o necesita refactorización?
- **Capacidades del SDK:** Evaluar si el SDK utilizado ofrece transformaciones, agregaciones en tiempo real y manejo de ventanas.
- **Manejo de Retrasos:** Capacidad para gestionar datos retrasados en la transmisión.
- **Uso de Plantillas:** Determinar si se pueden reutilizar plantillas o soluciones preexistentes.

---

### **Ventajas Clave de Dataflow:**
1. **Automatización Operativa:**  
   Administra automáticamente recursos y optimiza el rendimiento.
2. **Escalabilidad Dinámica:**  
   Proporciona recursos a demanda y escala automáticamente según las necesidades.
3. **Tolerancia a Fallos:**  
   Garantiza una ejecución coherente y correcta, independientemente del tamaño o complejidad de la canalización.
4. **Monitoreo Integrado:**  
   Ofrece estadísticas sobre el rendimiento y registros consolidados de trabajadores casi en tiempo real.

---

### **Integraciones:**
Dataflow se integra con varios servicios de Google Cloud para un procesamiento fluido:
- **Cloud Storage**
- **Pub/Sub**
- **Datastore**
- **Cloud Bigtable**
- **BigQuery**

## **Lab de Dataflow Usando Plantillas**

### **Objetivo del Lab:**
Crear una canalización de transmisión en **Dataflow** utilizando la plantilla preconfigurada de **Pub/Sub a BigQuery** proporcionada por Google.

---

### **Metodologías Disponibles:**
- **Consola de Google Cloud**
- **Cloud Shell (Línea de Comandos)**  
  *Nota:* Puedes experimentar con ambos métodos repitiendo el lab.

---

### **Actividades del Lab:**
1. **Creación de Recursos en BigQuery:**
   - Configura un conjunto de datos y crea una tabla en **BigQuery** usando Cloud Shell o la consola de Google Cloud.

2. **Ejecución de la Canalización:**
   - Implementa la plantilla de **Pub/Sub a BigQuery** en **Dataflow** para procesar datos en tiempo real.

3. **Consulta de Resultados:**
   - Después de ejecutar la canalización, envía consultas a la tabla de BigQuery para verificar los datos procesados.

---

### **Beneficio Principal:**
Este lab proporciona experiencia práctica en la creación de canalizaciones de transmisión mediante plantillas preconfiguradas de Google Cloud, simplificando el proceso de **ETL** de datos en tiempo real.

## **Lab: Dataflow Qwik Start con SDK de Python**

### **Objetivo del Lab:**
Configurar un entorno de desarrollo en **Python** para ejecutar una canalización de **Dataflow** utilizando el **SDK de Dataflow para Python**.

---

### **Actividades del Lab:**
1. **Configuración del Entorno de Python:**
   - Instala y configura un entorno de desarrollo de **Python** adecuado para trabajar con **Dataflow**.

2. **Obtención del SDK de Dataflow para Python:**
   - Descarga e instala el **SDK de Dataflow** para **Python**, que permitirá ejecutar canalizaciones de datos.

3. **Ejecución de una Canalización de Ejemplo:**
   - Ejecuta una canalización de ejemplo utilizando la **consola de Google Cloud** para ver su funcionamiento y resultados.

---

### **Beneficio Principal:**
Este lab proporciona experiencia en el uso del SDK de **Dataflow** para Python, facilitando el desarrollo y despliegue de canalizaciones de datos personalizadas en **Google Cloud**.

## **BigQuery: Almacén de Datos Empresarial de Google**

### **¿Qué es BigQuery?**
**BigQuery** es un almacén de datos completamente administrado, escalable a nivel de petabytes y sin servidores que permite ejecutar consultas SQL para analizar grandes volúmenes de datos. Está diseñado para facilitar la toma de decisiones empresariales sin necesidad de gestionar infraestructura.

---

### **Características Clave:**

1. **Almacenamiento y Análisis en uno:**
   - **BigQuery** almacena y analiza petabytes de datos.
   - Incluye funciones avanzadas para **aprendizaje automático (ML)**, **inteligencia empresarial (BI)** y **análisis geoespacial**.

2. **Completamente Administrado y Sin Servidores:**
   - No requiere preocuparse por la infraestructura subyacente.
   - Ideal para ejecutar consultas SQL de forma rápida y eficiente.

3. **Modelo de Precios Flexible:**
   - **Pago por consulta:** Solo pagas por los bytes procesados.
   - **Tarifa plana:** Factura fija con recursos reservados.

4. **Seguridad Integrada:**
   - Cifrado de datos en reposo por defecto.
   - Protege datos almacenados en discos y medios de copia de seguridad.

5. **Funciones de Aprendizaje Automático (ML):**
   - Permite crear modelos de ML directamente usando SQL.
   - Se integra con herramientas como **Vertex AI** para flujos de trabajo avanzados de IA/ML.

---

### **Arquitectura de BigQuery:**

1. **Entrada de Datos:**
   - **Transmisión en tiempo real:** Usa **Pub/Sub** para resumir datos.
   - **Datos por lotes:** Se suben a **Cloud Storage**.

2. **Procesamiento con Dataflow:**
   - Extrae, transforma y carga (ETL) los datos antes de almacenarlos en BigQuery.

3. **Análisis y Visualización:**
   - Usa herramientas como **Looker Studio**, **Tableau** o incluso **Hojas de cálculo de Google**.
   - Se integra con **Vertex AI** para entrenar y desplegar modelos de IA.

---

### **Métodos de Carga de Datos:**

1. **Carga por lotes:**
   - Datos cargados en una sola operación, manual o programada.

2. **Transmisión continua:**
   - Datos enviados en lotes pequeños para consultas casi en tiempo real.

3. **Datos generados por consultas SQL:**
   - Inserción de filas en tablas existentes o creación de nuevas tablas a partir de consultas.

---

### **Análisis y Toma de Decisiones:**
- Optimizado para ejecutar consultas de análisis en grandes volúmenes de datos.
- Proporciona resultados rápidos en terabytes o petabytes de datos.
- Compatible con herramientas de visualización para crear reportes y dashboards interactivos.

---

### **BigQuery ML: Aprendizaje Automático con SQL:**
- Facilita la creación de modelos ML sin necesidad de programar en lenguajes específicos.
- Permite a los analistas de datos aplicar ML usando SQL.
- Reduce la dependencia de equipos de científicos de datos.

---

### **Integraciones y Acceso Externo:**
- Consultas a fuentes de datos externas como **Cloud Storage**, **Spanner** o **Cloud SQL**.
- Acceso a datos de múltiples nubes (AWS, Azure).
- Compatible con conjuntos de datos públicos disponibles en **Cloud Marketplace**.

---

### **Beneficios para Diferentes Roles:**
- **Analistas de datos:** Acceso a herramientas de BI y ML sin necesidad de conocimientos avanzados en programación.
- **Científicos de datos:** Integración con plataformas de ML como **Vertex AI**.
- **Desarrolladores:** Facilidad de uso con APIs y CLI para automatización.

--- 

### **Resumen:**
**BigQuery** es una solución integral para almacenar, analizar y obtener información valiosa a partir de grandes volúmenes de datos. Con su flexibilidad, escalabilidad y capacidades de ML, facilita la toma de decisiones empresariales basadas en datos.

## **Lab:Cloud Dataprep: Qwik Start**

### **Objetivo del Lab:**
Aprender a utilizar **Dataprep** para manipular e interpretar un conjunto de datos, aplicando transformaciones y fórmulas que generen resultados útiles.

---

### **Pasos Clave:**

1. **Importar un Conjunto de Datos:**
   - Utiliza **Dataprep** para cargar datos desde una fuente (por ejemplo, Cloud Storage o BigQuery).
   - Configura los parámetros de importación, como delimitadores o formatos de archivo.

2. **Exploración Inicial de Datos:**
   - Visualiza el conjunto de datos para identificar patrones, valores atípicos o datos faltantes.
   - Utiliza las funciones de perfilado de Dataprep para obtener estadísticas rápidas.

3. **Aplicar Transformaciones:**
   - Usa la interfaz visual de Dataprep para realizar transformaciones:
     - **Filtrado:** Elimina o selecciona filas específicas.
     - **Normalización:** Ajusta los valores para una escala común.
     - **Derivación de Columnas:** Crea nuevas columnas basadas en fórmulas personalizadas.
   
4. **Crear Fórmulas Personalizadas:**
   - Aplica fórmulas para transformar datos o calcular nuevos valores.
   - Ejemplo: Convertir fechas, concatenar cadenas o aplicar operaciones matemáticas.

5. **Validar y Exportar Datos:**
   - Previsualiza los resultados después de aplicar las transformaciones.
   - Exporta el conjunto de datos limpio y transformado a un destino, como BigQuery o Cloud Storage.

---

### **Beneficios de Usar Dataprep:**
- **Interfaz Visual Intuitiva:** Facilita la limpieza y transformación de datos sin necesidad de escribir código.
- **Automatización:** Permite automatizar flujos de trabajo de preparación de datos.
- **Colaboración:** Proporciona herramientas para que diferentes miembros del equipo trabajen en la preparación de datos.

---

### **Resultado Esperado:**
Al final del lab, tendrás un conjunto de datos limpio y transformado, listo para su análisis o para ser utilizado en otros servicios de Google Cloud, como **BigQuery** o **Vertex AI**.
