pwd
ls -ltr
mkdir mission1_en 
mv mission1.zip mission1_en 
cd mission1_en 
unzip mission1.zip 
mv ~/accessKeys.csv mission1/en 
cd mission1/en 
chmod +x *.sh
ls -ltr
pwd
cd ..
ls -ltr
cd ..
ls -ltr
pwd
cd ..
pwd
mv ~/terraform-en-1_accessKeys mission1/en
ls -ltr
mv terraform-en-1_accessKeys mission1/en
pwd
ls 
mv terraform-en-1_accessKeys mission1_en
pwd
ls
mv terraform-en-1_accessKeys.csv mission1_en
cd mission1_en/
pwd
ls
cd mission1/
ls
cd en
ls 
ls -ltr
./aws_set_credentials.sh terraform-en-1_accessKeys.csv
pwd
cd ..
pwd
cd ,,
cd ..
pwd
./aws_set_credentials.sh terraform-en-1_accessKeys.csv
ls
pwd
ls
cd mission1/
ls
cd en
ls
./aws_set_credentials.sh terraform-en-1_accessKeys.csv
cd ..
pwd
ls
mv terraform-en-1_accessKeys.csv mission1/en/
./aws_set_credentials.sh terraform-en-1_accessKeys.csv
pwd
ls
cd mission1/
ls
cd en
ls
./aws_set_credentials.sh terraform-en-1_accessKeys.csv
gcloud config set project vast-crow-380610
./gcp_set_project.sh 
gcloud services enable containerregistry.googleapis.com 
gcloud services enable container.googleapis.com 
gcloud services enable sqladmin.googleapis.com
cd terraform/
terraform init
terraform plan
terraform apply
pwd
ls
cd mission1_en/
ls
cd mission1/
ls
cd ..
pwd
cd ..
pwd
cd mkdir mission2_en
mkdir mission2_en
cd mission2_en/
ls
wget https://tcb-public-events.s3.amazonaws.com/icp/mission2.zip
unzip mission2.zip 
mysql --host=34.86.155.124 --port=3306 -u app -p
pwd
ls
cd mission2/
ls
cd en
ls
cd app
ls
gcloud services enable cloudbuild.googleapis.com
gcloud builds submit --tag gcr.io/vast-crow-380610/luxxy-covid-testing-system-app-en
gcloud container clusters get-credentials luxxy-kubernetes-cluster-en --region us-east4 --project vast-crow-380610
kubectl get nodes
pwd
ls
cd ..
;s
ls
cd kubernetes/
ls
kubectl apply -f luxxy-covid-testing-system.yaml
pwd
curl -O https://storage.googleapis.com/bootcamp-gcp-public/hands-on-tcb-bmc-gcp.zip
ls -ltr
unzip hands-on-tcb-bmc-gcp.zip 
ls -ltr
cd hands-on-tcb-bmc-gcp/
ls -ltr
chmod +x *.sh
ls -ltr
cd ..
ls -ltr
pwd
ls -ltr
cd hands-on-tcb-bmc-gcp/
ls -ltr
./gcp_set_credentials.sh ~/tcb-gcp-aws-45-93c6d52bfa73.json 
gcloud config list compute/zone
pwd
ls -ltr
cd hands-on-tcb-bmc-gcp/
ls -ltr
clear
ls -ltr
./aws_set_credentials.sh ~/accessKeys.csv 
cat aws_set_credentials.sh 
ls
cd hands-on-tcb-bmc-gcp/
ls -ltr
cat aws_set_credentials.sh 
cat /aws_set_credentials.sh ~/accessKeys.csv
./get_terraform.sh 
gcloud config set project tcb-gcp-aws-45
cat /gcp_set_project.sh
ls -ltr
./gcp_set_project.sh 
cat /home/findharry46/hands-on-tcb-bmc-gcp/terraform/terraform.tfvars 
whoam
whoami
ssh-keygen -t rsa -f ~/.ssh/vm-ssh-key -C findharry46
chmod 400 ~/.ssh/vm-ssh-key
gcloud compute config-ssh --ssh-key-file=~/.ssh/vm-ssh-key
cd ..
cd .ssh/
ls -ltr
pwd
cd ..
ls -ltr
cd hands-on-tcb-bmc-gcp/
cd terraform/
ls -ltr
terraform init
terraform validate
terraform plan
pwd
ls
cd hands-on-tcb-bmc-gcp/
ls -ltr
chmod +x *.sh
ls -ltr
clear
ls -ltr
clear
ls -ltr
./aws_set_credentials_\(1\).sh ~/accessKeys.csv 
cd terraform/
pwd
terraform init
terraform validate
terraform plan
pwd
cd hands-on-tcb-bmc-gcp/
cd terraform/
terraform validate
terraform apply
ls -ltr
pwd
cd ..
ls -ltr
cd ..
ls -ltr
whoami
ssh-keygen -t rsa -f ~/.ssh/vm-ssh-key -C findharry46
gcloud app describe
gcloud config list compute/region
pwd
ls -ltr
cd hands-on-tcb-bmc-gcp/
ls -ltr
cd ..
pwd
cd .ssh
ls -ltr
chmod 400 vm-ssh-key
ls -ltr
cd ..
cd hands-on-tcb-bmc-gcp/
chmod 400 ~/.ssh/vm-ssh-key
clear
cd terraform/
terraform init
terraform validate
terraform plan
terraform apply
ls
cd hands-on-tcb-bmc-gcp/
cd terraform/
terraform destroy
gcloud config set project tcb-gcp-aws-45
glocud config set compute/zone us-west1-a
gcloud config set compute/zone us-west1-a
gcloud compute firewall-rules create allow-ssh --network default --allow tcp:22 --source-ranges 0.0.0.0/0
gcloud compute firewall-rules create allow-http --network default --allow tcp:80 --source-ranges 0.0.0.0/0
gcloud compute instances create app-01 --project=$DEVSHELL_PROJECT_ID --zone=us-west1-a --machine-type=n1-standard-1 --subnet=default --scopes="cloud-platform" --tags=http-server,https-server --image=ubuntu-minimal-1604-xenial-v20210119a --image-project=ubuntu-os-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard --boot-disk-device-name=app-01
whoami
ssh-keygen -t rsa -f ~/.ssh/app-key -C findharry46
ls -ltr .ssh/
pwd
ls -ltr
ls -ltr .ssh/
chmod 400 ~/.ssh/app-key
ls -ltr
ls -l|greo app-key
ls -l|grep app-key
gcloud compute config-ssh --ssh-key-file=~/.ssh/app-key
gcloud config set account findharry46
gcloud compute config-ssh --ssh-key-file=~/.ssh/app-key
gcloud auth login
gcloud compute config-ssh --ssh-key-file=~/.ssh/app-key
gcloud container clusters create app-01 --project=$DEVSHELL_PROJECT_ID --zone=us-west1-a --machine-type n1-standard-4 --cluster-version=1.21 --release-channel=stable --image-type ubuntu --num-nodes 1 --logging=SYSTEM --monitoring=SYSTEM --subnetwork "projects/$DEVSHELL_PROJECT_ID/regions/us-west1/subnetworks/default"
gcloud iam service-accounts create tcb-m4a-install --project=$DEVSHELL_PROJECT_ID
gcloud projects add-iam-policy-binding $DEVSHELL_PROJECT_ID --member="serviceAccount:tcb-m4a-install@$DEVSHELL_PROJECT_ID.iam.gserviceaccount.com" --role="roles/storage.admin"
gcloud iam service-accounts keys create tcb-m4a-install.json --iam-account=tcb-m4a-install@$DEVSHELL_PROJECT_ID.iam.gserviceaccount.com --project=$DEVSHELL_PROJECT_ID
ls -ltr
gcloud container clusters get-credentials app-01 --zone us-west1-a --project $DEVSHELL_PROJECT_ID
migctl setup install --json-key=tcb-m4a-install.json
migctl doctor
gcloud iam service-accounts create tcb-m4a-ce-src --project=$DEVSHELL_PROJECT_ID
gcloud projects add-iam-policy-binding $DEVSHELL_PROJECT_ID --member="serviceAccount:tcb-m4a-ce-src@$DEVSHELL_PROJECT_ID.iam.gserviceaccount.com" --role="roles/compute.viewer"
gcloud projects add-iam-policy-binding $DEVSHELL_PROJECT_ID --member="serviceAccount:tcb-m4a-ce-src@$DEVSHELL_PROJECT_ID.iam.gserviceaccount.com" --role="roles/compute.storageAdmin"
gcloud iam service-accounts keys create tcb-m4a-ce-src.json --iam-account=tcb-m4a-ce-src@$DEVSHELL_PROJECT_ID.iam.gserviceaccount.com --project=$DEVSHELL_PROJECT_ID
ls -ltr
migctl source create ce app-01-source --project $DEVSHELL_PROJECT_ID --json-key=tcb-m4a-ce-src.json
migctl migration create my-migration --source app-01-source --vm-id app-01 --intent Image
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
migctl migration get my-migration
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
migctl migration generate-artifacts my-migration
migctl migration status my-migration
ls -ltr
migctl migration status my-migration
migctl migration get-artifacts my-migration 
ls -ltr
