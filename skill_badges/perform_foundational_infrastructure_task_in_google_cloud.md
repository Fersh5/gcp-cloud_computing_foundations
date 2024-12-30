# Set Up an App Dev Environment on Google Cloud

## Situación del desafío
Recién comienzas a desempeñarte en tu rol como ingeniero junior de servicios de nube para Jooli Inc. Hasta ahora, estuviste ayudando a los equipos a crear y administrar recursos de Google Cloud.

Se espera que tengas las habilidades y el conocimiento para realizar estas tareas, por lo que no recibirás guías paso a paso.

## Tu desafío
Se te solicitó ayudar a un equipo de desarrollo recién formado con el trabajo inicial de un nuevo proyecto llamado Recuerdos, que consiste en almacenar y organizar fotos. Se te solicitó que ayudes al equipo de Recuerdos con la configuración inicial de su entorno de desarrollo de aplicaciones.

Recibiste una solicitud para completar estas tareas:

* Crear un bucket para almacenar fotos
* Crear un tema de Pub/Sub para que lo utilice la Cloud Function que generes
* Crear una Cloud Function
* Quitar el acceso del anterior ingeniero de servicios de nube para que ya no pueda ingresar al proyecto Recuerdos

### Estas son algunas pautas de Jooli Inc. que debes seguir:

* Crea todos los recursos en la región REGION y en la zona ZONE, a menos que se indique lo contrario.
* Usa las VPC del proyecto.
* Normalmente, la asignación de nombres se realiza de la siguiente manera: equipo-recurso; p. ej., una instancia podría llamarse kraken-webserver1
* Asigna tamaños de recursos rentables. Ten cuidado porque los proyectos se supervisan y el uso excesivo de recursos dará como resultado la finalización del proyecto que los contiene, es decir, posiblemente el tuyo. Esta es la orientación que el equipo de supervisión está dispuesto a compartir; a menos que se indique lo contrario, utiliza e2-micro para VMs pequeñas de Linux y e2-medium para Windows o alguna otra aplicación, como nodos de Kubernetes.

## Tarea 1: Crea un bucket
Debes crear un bucket llamado Bucket Name para almacenar las fotos. Asegúrate de que el recurso esté creado en la región REGION y en la zona ZONE.

## Tarea 2: Crea un tema de Pub/Sub
Crea un tema de Pub/Sub llamado Topic Name para que la Cloud Function envíe mensajes.

## Tarea 3: Crea la Cloud Function de la miniatura
Crea una Cloud Function Cloud Function Name que creará una miniatura a partir de una imagen agregada al bucket Bucket Name. Asegúrate de que la Cloud Function esté usando el entorno de 2ª generación. Asegúrate de que el recurso esté creado en la región REGION y en la zona ZONE.

1. Crea una Cloud Function llamada Cloud Function Name

>Nota: La Cloud Function se debe ejecutar cada vez que se cree un objeto en el bucket que creaste en la tarea 1. Durante el proceso, la Cloud Function puede solicitarte permiso para habilitar APIs. Habilita cada API solicitada.

2. Asegúrate de configurar el punto de entrada (la Function que se ejecutará) como Cloud Function Name y el activador como Cloud Storage.

3. Agrega el siguiente código a index.js:
``` javascript
const functions = require('@google-cloud/functions-framework');
const crc32 = require("fast-crc32c");
const { Storage } = require('@google-cloud/storage');
const gcs = new Storage();
const { PubSub } = require('@google-cloud/pubsub');
const imagemagick = require("imagemagick-stream");

functions.cloudEvent('memories-thumbnail-generator', cloudEvent => {
  const event = cloudEvent.data;

  console.log(`Event: ${event}`);
  console.log(`Hello ${event.bucket}`);

  const fileName = event.name;
  const bucketName = event.bucket;
  const size = "64x64"
  const bucket = gcs.bucket(bucketName);
  const topicName = "topic-memories-446";
  const pubsub = new PubSub();
  if ( fileName.search("64x64_thumbnail") == -1 ){
    // doesn't have a thumbnail, get the filename extension
    var filename_split = fileName.split('.');
    var filename_ext = filename_split[filename_split.length - 1];
    var filename_without_ext = fileName.substring(0, fileName.length - filename_ext.length );
    if (filename_ext.toLowerCase() == 'png' || filename_ext.toLowerCase() == 'jpg'){
      // only support png and jpg at this point
      console.log(`Processing Original: gs://${bucketName}/${fileName}`);
      const gcsObject = bucket.file(fileName);
      let newFilename = filename_without_ext + size + '_thumbnail.' + filename_ext;
      let gcsNewObject = bucket.file(newFilename);
      let srcStream = gcsObject.createReadStream();
      let dstStream = gcsNewObject.createWriteStream();
      let resize = imagemagick().resize(size).quality(90);
      srcStream.pipe(resize).pipe(dstStream);
      return new Promise((resolve, reject) => {
        dstStream
          .on("error", (err) => {
            console.log(`Error: ${err}`);
            reject(err);
          })
          .on("finish", () => {
            console.log(`Success: ${fileName} → ${newFilename}`);
              // set the content-type
              gcsNewObject.setMetadata(
              {
                contentType: 'image/'+ filename_ext.toLowerCase()
              }, function(err, apiResponse) {});
              pubsub
                .topic(topicName)
                .publisher()
                .publish(Buffer.from(newFilename))
                .then(messageId => {
                  console.log(`Message ${messageId} published.`);
                })
                .catch(err => {
                  console.error('ERROR:', err);
                });
          });
      });
    }
    else {
      console.log(`gs://${bucketName}/${fileName} is not an image I can handle`);
    }
  }
  else {
    console.log(`gs://${bucketName}/${fileName} already has a thumbnail`);
  }
});

```
4. Agrega el siguiente código a package.json:
``` json
{
  "name": "thumbnails",
  "version": "1.0.0",
  "description": "Create Thumbnail of uploaded image",
  "scripts": {
    "start": "node index.js"
  },
  "dependencies": {
    "@google-cloud/functions-framework": "^3.0.0",
    "@google-cloud/pubsub": "^2.0.0",
    "@google-cloud/storage": "^5.0.0",
    "fast-crc32c": "1.0.4",
    "imagemagick-stream": "4.1.1"
  },
  "devDependencies": {},
  "engines": {
    "node": ">=4.3.2"
  }
}
```
## Tarea 4: Prueba la infraestructura
Debes subir una imagen en formato JPG o PNG al bucket

1. Sube una imagen en formato PNG o JPG al bucket Bucket Name.
>Nota: De manera alternativa, descarga esta imagen https://storage.googleapis.com/cloud-training/gsp315/map.jpg en tu máquina y, luego, súbela al bucket.

2. Al cabo de unos instantes, aparecerá una imagen de miniatura (selecciona ACTUALIZAR en los detalles del bucket).

## Tarea 5: Quita al anterior ingeniero de servicios de nube
Verás que hay dos usuarios definidos en el proyecto:

* Uno que corresponde a tu cuenta (Username 1, con el rol Propietario)
* Otro que corresponde al ingeniero de servicios de nube anterior (Username 2, con el rol Visualizador).

1. Quita el acceso del anterior ingeniero de servicios de nube para que ya no pueda ingresar al proyecto.

## Inicio Solución

``` bash
# Asegurate de usar la region y zona otorgada en tu lab
gcloud config set compute/region us-central1
gcloud config set compute/zone us-central1-a
gcloud config set run/region us-central1

export REGION=$(gcloud config get-value compute/region)
export ZONE=$(gcloud config get-value compute/zone)

PROJECT_NUMBER=$(gcloud projects describe $DEVSHELL_PROJECT_ID --format='value(projectNumber)')

gsutil mb -l $REGION gs://$DEVSHELL_PROJECT_ID-bucket

# Asegurate de usar el nombre del topic otorgado por el lab
gcloud pubsub topics create topic-memories-446

mkdir cloud_function
cd cloud_function

nano index.js 
    # Dentro pega el codigo otorgado por el lab

nano package.json
    # Dentro pega el codigo otorgado por el lab

SERVICE_ACCOUNT="$(gsutil kms serviceaccount -p $DEVSHELL_PROJECT_ID)"
gcloud projects add-iam-policy-binding $DEVSHELL_PROJECT_ID \
    --member="serviceAccount:${SERVICE_ACCOUNT}" \
    --role='roles/pubsub.publisher'

# La primera vez que se ejecute el comando para crear la cloud function te pedira habilitar algnas API's y probablemente te arroje un error por el tiempo que tarda en habilitar las API's

# Solo espera unos minutos y ejecutala de nuevo o puedes proceder a ejecutar los comandos siguientes 2 comandos que corresponden a la tarea 5 y volver a crear la cloud function

# Asegurate de nombrar la cloud function como te indica tu lab y ese mismo nobre modificar el 'entry-point'
gcloud functions deploy memories-thumbnail-generator \
    --gen2 \
    --runtime=nodejs20 \
    --region=$REGION \
    --entry-point=memories-thumbnail-generator \
    --trigger-event=google.storage.object.finalize \
    --trigger-resource=$DEVSHELL_PROJECT_ID-bucket

USER_2=student-00-c37660d83968@qwiklabs.net

gcloud projects remove-iam-policy-binding $DEVSHELL_PROJECT_ID \
    --member=user:$USER_2 \
    --role=roles/viewer

curl -o map.jpg https://storage.googleapis.com/cloud-training/gsp315/map.jpg

gsutil cp map.jpg gs://$DEVSHELL_PROJECT_ID-bucket

gsutil ls gs://$DEVSHELL_PROJECT_ID-bucket
```