
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