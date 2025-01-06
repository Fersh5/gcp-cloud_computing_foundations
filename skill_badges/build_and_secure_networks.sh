
export ZONE=zone_lab

gcloud compute firewall-rules delete open-access

gcloud compute instances start bastion --zone=$ZONE

gcloud compute firewall-rules create ssh-ingress \
    --allow=tcp:22 \
    --source-ranges 35.235.240.0/20 \
    --target-tags accept-ssh-iap-ingress-ql-286 \
    --network acme-vpc

gcloud compute instances add-tags bastion --tags accept-ssh-iap-ingress-ql-286 --zone=$ZONE

gcloud compute firewall-rules create http-ingress \
    --allow=tcp:80 \
    --source-ranges 0.0.0.0/0 \
    --target-tags accept-http-ingress-ql-286 \
    --network acme-vpc

gcloud compute instances add-tags juice-shop --tags accept-http-ingress-ql-286 --zone=$ZONE

gcloud compute firewall-rules create internal-ssh-ingress \
    --allow=tcp:22 \
    --source-ranges 192.168.10.0/24 \
    --target-tags accept-ssh-internal-ingress-ql-286 \
    --network acme-vpc

gcloud compute instances add-tags juice-shop --tags accept-ssh-internal-ingress-ql-286 --zone=$ZONE

cat > prepare_disk.sh <<'EOF_END'
export ZONE=$(gcloud compute instances list juice-shop --format 'csv[no-heading](zone)')
gcloud compute ssh juice-shop --internal-ip --zone=$ZONE --quiet
EOF_END

gcloud compute scp prepare_disk.sh bastion:/tmp --project=$DEVSHELL_PROJECT_ID --zone=$ZONE --quiet

gcloud compute ssh bastion --project=$DEVSHELL_PROJECT_ID --zone=$ZONE --quiet --command="bash /tmp/prepare_disk.sh"