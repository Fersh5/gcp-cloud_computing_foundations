#Example
# Usa la region y zona que te indica tu lab
gcloud config set compute/region us-west4
gcloud config set compute/zone us-west4-a

export REGION=$(gcloud config get-value compute/region)
export ZONE=$(gcloud config get-value compute/zone)

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
