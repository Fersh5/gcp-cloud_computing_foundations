# **Módulo Final: Google Cloud Computing Foundations**  
### **Let Machines Do the Work**

---

### **Objetivo del Módulo:**
Explorar el aprendizaje automático (**AA**) y su aplicación utilizando las herramientas de Google Cloud, como **Vertex AI** y las **APIs de Google AI**.

---

### **Temario del Módulo:**

1. **Introducción al Aprendizaje Automático (AA):**  
   - Definición del AA y comprensión de la terminología clave.
   - Identificación de la propuesta de valor del aprendizaje automático.

2. **Exploración de Vertex AI:**  
   - Descubre **Vertex AI**, la plataforma unificada de IA de Google.
   - Comprende cómo facilita el desarrollo de proyectos de AA desde la ideación hasta la producción.

3. **Laboratorio Práctico con Vertex AI:**  
   - Usa **AutoML** para entrenar modelos personalizados de alta calidad con un esfuerzo mínimo.
   - Explora el entrenamiento personalizado para tener mayor control sobre el desarrollo del modelo.

4. **APIs de Aprendizaje Automático de Google:**  
   - Revisión de APIs preentrenadas para tareas comunes:
     - **Cloud Natural Language API**: Análisis de texto y comprensión del lenguaje natural.
     - **Cloud Speech API**: Conversión de voz a texto.
     - **Video Intelligence API**: Análisis y etiquetado de contenido en videos.

5. **Laboratorios Prácticos:**  
   - Aplica las APIs mencionadas en escenarios reales.
   - Desarrolla habilidades prácticas en el uso de cada API.

6. **Cierre del Módulo:**  
   - Realiza un cuestionario final para evaluar lo aprendido.
   - Revisión y resumen de los temas cubiertos.

---

### **Resultados Esperados:**
- Comprenderás los conceptos básicos del aprendizaje automático y su valor en la toma de decisiones.
- Dominarás el uso de **Vertex AI** para crear y desplegar modelos de AA.
- Aplicarás **APIs de Google** en tareas de procesamiento de lenguaje natural, reconocimiento de voz y análisis de video.
- Tendrás experiencia práctica en la implementación de soluciones de AA.

---

## Aprendizaje Automático en la Nube

El mundo está lleno de situaciones que las personas interpretamos fácilmente, pero para las computadoras, el mundo es complicado y desordenado. La inteligencia artificial (IA) busca crear máquinas que puedan aprender de su entorno, errores y personas, imitando la inteligencia humana.

---

### Evolución de la Computación e IA

- **Décadas pasadas**: La computación se basaba en la lógica para resolver problemas matemáticos o jugar ajedrez.
- **Desafíos actuales**: Actividades cotidianas son más complejas; las reglas estrictas no son suficientes.
- **Enfoques modernos**: La IA combina diferentes técnicas como redes neuronales, aprendizaje supervisado y no supervisado, y estadística inferencial.

---

### Aplicaciones Prácticas de la IA

- **Ejemplos comunes**: 
  - Frenos antibloqueo
  - Pilotos automáticos
  - Recomendaciones de video
  - Traducciones automáticas
- **Avances rápidos**: Lo que hoy parece rutinario, hace décadas era asombroso.

---

### Definiciones Clave

- **Inteligencia Artificial (IA)**: Procesos que imitan la inteligencia humana.
- **Aprendizaje Automático (AA)**: Subconjunto de la IA, permite a las máquinas aprender de datos sin código personalizado.
- **Aprendizaje Profundo**: Subconjunto del AA; usa redes neuronales para analizar datos no estructurados como imágenes o texto.

---

### Cómo Aprenden las Máquinas

1. **Entrenamiento del modelo**:
   - Se utilizan ejemplos etiquetados (entrada y salida).
   - La calidad de los datos es crucial.
   
2. **Ejemplo práctico**:
   - Detectar defectos en piezas de fábrica con imágenes.
   - El mismo algoritmo puede usarse en diferentes casos (fabricación, diagnóstico de plantas).

---

### Opciones en Google Cloud para Crear Modelos de AA

1. **BigQuery ML**: Crear modelos usando SQL en BigQuery.
2. **AutoML**: Solución sin código en Vertex AI.
3. **Entrenamiento personalizado**: Control total sobre el entorno de AA.
4. **APIs pre-creadas**: Utilizar modelos de IA de Google sin necesidad de entrenar nuevos modelos.

---

### Experimentos Prácticos

- **Quick Draw**: Ejemplo interactivo donde una red neuronal aprende a reconocer dibujos.
- **Neural Network Playground de TensorFlow**: Herramienta para entender cómo funcionan las redes neuronales.

---

# Compilación de Modelos ML con Vertex AI

### Introducción a Vertex AI  
El aprendizaje automático requiere gestionar grandes cantidades de datos, elegir modelos adecuados y aprovechar la potencia de procesamiento. Google ha invertido tiempo y recursos en IA, desarrollando tecnologías como **scikit-learn** y **Vertex AI**. Google aplica IA en productos como **Gmail**, **Google Maps**, **Google Fotos** y **Google Traductor**.

---

### Desafíos del Desarrollo de IA  
#### Desafíos principales:  
- **Gestión de datos:** Manejar grandes volúmenes de información.  
- **Selección del modelo:** Determinar el modelo correcto de AA.  
- **Producción:** Necesidad de escalabilidad, supervisión, CI/CD.  

**Gartner** señala que solo la mitad de los proyectos de AA superan la fase piloto debido a estos desafíos.

#### Facilidad de uso:  
- Herramientas actuales requieren programación avanzada.  
- Falta de un flujo de trabajo unificado complica la tarea de los científicos de datos.

---

### Vertex AI: La Solución de Google  
**Vertex AI** es una plataforma unificada que simplifica la creación, administración e implementación de modelos de AA a gran escala.  

#### Flujo de trabajo en Vertex AI:  
1. **Preparación de datos:** Importar datos desde Cloud Storage, BigQuery o una máquina local.  
2. **Preparación de atributos:** Crear y compartir atributos procesados.  
3. **Entrenamiento:** Experimentar con modelos y ajustar hiperparámetros.  
4. **Implementación y supervisión:** Configurar pipelines para producción y supervisión continua.  

---

### Opciones de Creación de Modelos  
- **AutoML:** Solución sin código que facilita la creación de modelos.  
- **Entrenamiento personalizado:** Ofrece control total sobre el proceso y entorno de desarrollo.  

---

### Beneficios de Vertex AI  
- **Fluidez:** Experiencia integrada desde la carga de datos hasta la producción.  
- **Escalabilidad:** MLOps facilita la supervisión y escalado automático.  
- **Sustentabilidad:** Artefactos y funciones reutilizables.  
- **Rapidez:** Produce modelos con un **80% menos de líneas de código** que la competencia.

## Lab: Vertex AI Qwik Start

### Objetivo del Lab  
Practicarás con **Vertex AI** para entrenar e implementar un modelo regresor personalizado de **TensorFlow** que predice el ciclo de vida del cliente.

---

### Actividades del Lab  
1. **Análisis Exploratorio:**  
   Utilizarás **BigQuery** para procesar y analizar datos exploratorios.

2. **Entrenamiento Local:**  
   Entrenarás un modelo de TensorFlow en un **notebook alojado en Vertex AI**.

3. **Gestión de Conjunto de Datos:**  
   Crearás un artefacto de datos tabulares administrado para rastrear experimentos.

4. **Contenerización del Código:**  
   Alojarás el código de entrenamiento en un contenedor usando **Cloud Build** y lo enviarás a **Artifact Registry**.

5. **Entrenamiento Personalizado:**  
   Ejecutarás el entrenamiento personalizado de Vertex AI utilizando el contenedor del modelo.

6. **Visualización del Rendimiento:**  
   Usarás **Vertex TensorBoard** para visualizar el rendimiento del modelo.

7. **Implementación del Modelo:**  
   Desplegarás el modelo en **Vertex Online Prediction** para obtener predicciones en tiempo real.

8. **Solicitar Predicción y Explicación:**  
   Realizarás una solicitud de predicción y explicación en línea, y revisarás la respuesta.

## AutoML

### Introducción a AutoML  
**AutoML** es una solución sin código en **Vertex AI** que permite a los usuarios crear modelos de aprendizaje automático personalizados con mínimo esfuerzo o experiencia.

---

### Principales Tecnologías  
1. **Aprendizaje por Transferencia:**  
   - Utiliza modelos previamente entrenados con conjuntos de datos grandes y similares.  
   - Permite obtener resultados precisos con menos datos y tiempo de procesamiento.  

2. **Búsqueda de Arquitectura Neuronal:**  
   - Encuentra el modelo óptimo al evaluar y comparar varios modelos automáticamente.  

---

### Beneficios de AutoML  
- **Solución sin código:** Facilita la creación de modelos personalizados de alta calidad.  
- **Ahorro de tiempo:** Automatiza procesos manuales como ajuste de hiperparámetros y comparación de modelos.  
- **Prototipado rápido:** Útil para explorar conjuntos de datos nuevos antes de invertir en desarrollo completo.  
- **Foco en el negocio:** Permite a los científicos de datos concentrarse en definir problemas empresariales y mejorar resultados.  

---

### Tipos de Datos Compatibles  
AutoML admite cuatro tipos de datos y resuelve diferentes objetivos para cada uno:  
1. **Imágenes**  
2. **Datos tabulares**  
3. **Texto**  
4. **Video**  

---

### Flujo de Trabajo en AutoML  
1. **Carga de Datos:**  
   - Datos desde **Cloud Storage**, **BigQuery** o la máquina local.  

2. **Definición del Problema:**  
   - Seleccionar el objetivo a resolver con AutoML.  

3. **Entrenamiento del Modelo:**  
   - AutoML usa los datos proporcionados para entrenar y comparar modelos personalizados.  

4. **Predicción y Evaluación:**  
   - Aplicar el modelo entrenado a nuevas predicciones.  
   - Comparar con APIs predefinidas, que usan modelos ya entrenados por Google.  

---

### Aplicación Empresarial  
- Combinar diferentes tipos de datos y objetivos para resolver problemas complejos.  
- Identificar los mejores atributos en un conjunto de datos para optimizar modelos.  