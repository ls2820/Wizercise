sudo nano /etc/yum.repos.d/mongodb-org-7.0.repo
sudo dnf install -y mongodb-orG
sudo dnf install -y mongodb-org
sudo tee /etc/yum.repos.d/mongodb-org-7.0.repo <<EOF
[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-7.0.asc
EOF

sudo tee /etc/yum.repos.d/mongodb-org-7.0.repo <<EOF
[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-7.0.asc
EOF

sudo tee /etc/yum.repos.d/mongodb-org-7.0.repo <<EOF
[mongodb-org-7.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2023/mongodb-org/7.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://pgp.mongodb.com/server-7.0.asc
EOF

sudo dnf install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
mongosh
sudo nano /etc/mongod.conf
sudo systemctl restart mongoD
sudo systemctl restart mongod
sudo sysctl -w vm.max_map_count=262144
echo "vm.max_map_count=262144" | sudo tee -a /etc/sysctl.conf
mongosh -u myAdmin -p --authenticationDatabase admin
nano ~/backup_script.sh
chmod +x ~/backup_script.sH
chmod +x ~/backup_script.sh
./backup_script.sh
cat ~/backup.log
mongosh -u myAdmin -p --authenticationDatabase admin
./backup_script.sh
cat ~/backup.log
crontab -e
udo dnf install -y cronie
sudo dnf install -y cronie
sudo systemctl enable crond
sudo systemctl start crond
crontab -V
crontab -e
crontab -l
date
sudo nano /etc/mongod.conf
sudo systemctl restart mongod
kubectl run db-test --rm -it --image=busybox -- telnet 10.20.1.51 27017
eksctl
curl --silent --location "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
curl --silent --location "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" -o eksctl.tar.gz
tar -xzf eksctl.tar.gz
sudo mv ./eksctl /usr/local/bin
eksctl version
eksctl create cluster --name my-web-app-cluster --region us-east-1 --nodegroup-name standard-nodes --node-type t3.medium --nodes 2 --managed --vpc-private-subnets subnet-01b4bf5005f1fdba8,subnet-0918127bb890a10f3
aws eks describe-cluster --name my-web-app-cluster --query "cluster.status" --output text
aws eks update-kubeconfig --region us-east-1 --name my-web-app-cluster
kubectl get nodes
curl -LO "https://dl.k8s.io/release/$(curl -L -s
exit
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client
aws eks update-kubeconfig --region us-east-1 --name my-web-app-cluster
kubectl get nodes
aws eks describe-nodegroup --cluster-name my-web-app-cluster --nodegroup-name standard-nodes --query "nodegroup.health.issues"
eksctl get nodegroup --cluster my-web-app-cluster
export AWS_DEFAULT_REGION=us-east-1
aws configure list
eksctl get cluster
kubectl get nodes
eksctl create nodegroup --cluster my-web-app-cluster --name standard-nodes --node-type t3.medium --nodes 2 --managed
eksctl create nodegroup --cluster my-web-app-cluster --name standard-nodes --node-type t3.medium --nodes 2 --managed --vpc-private-subnets SUBNET_ID_1,SUBNET_ID_2 --node-private-networking
eksctl create nodegroup --cluster my-web-app-cluster --name standard-nodes --node-type t3.medium --nodes 2 --managed --node-private-networking --subnet-ids subnet-01b4bf5005f1fdba8,subnet-0918127bb890a10f3
kubectl get nodes
aws eks update-nodegroup-config --cluster-name my-web-app-cluster --nodegroup-name standard-nodes --scaling-config minSize=0,maxSize=1,desiredSize=0
eksctl get nodegroup --cluster my-web-app-cluster
export AWS_DEFAULT_REGION=us-east-1
aws configure set region us-east-1
eksctl create nodegroup --cluster my-web-app-cluster --name standard-nodes --node-type t3.medium --nodes 2 --managed --node-private-networking --subnet-ids subnet-01b4bf5005f1fdba8,subnet-0918127bb890a10f3
eksctl delete nodegroup --cluster my-web-app-cluster --name standard-nodes --approve
eksctl delete nodegroup --cluster my-web-app-cluster --name standard-nodes
eksctl create nodegroup --cluster my-web-app-cluster --name standard-nodes-v2 --node-type t3.medium --nodes 2 --managed --node-private-networking --subnet-ids subnet-01b4bf5005f1fdba8,subnet-0918127bb890a10f3
kubesctl get nodes
kubectl get nodes
echo "My Name: LorenzoSibani" > wizexercise.txt
cat wizexercise.txt
cat <<EOF > app.py
from flask import Flask
from pymongo import MongoClient
import os
app = Flask(__name__)
@app.route('/')
def hello():
    with open('wizexercise.txt', 'r') as f:
        file_content = f.read()
    mongo_ip = os.environ.get('MONGO_URI')
    try:
        client = MongoClient(f"mongodb://{mongo_ip}:27017/", serverSelectionTimeoutMS=2000)
        client.admin.command('ping')
        db_status = 'Successfully connected to MongoDB!'
    except Exception as e:
        db_status = f'Connection to MongoDB failed: {str(e)}'
    return f'<h1>Wiz Exercise</h1><p>{db_status}</p><p><b>File content:</b> {file_content}</p>'
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
EOF

cat app.py
cat <<EOF > Dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY wizexercise.txt .
COPY app.py .
RUN pip install flask pymongo
EXPOSE 80
CMD ["python", "app.py"]
EOF

ls
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 650251696449.dkr.ecr.us-east-1.amazonaws.com
sudo yum install -y docker
sudo systemctl start docker
sudo usermod -a -G docker ec2-user
exit
docker ps
ls
docker build -t wiz-web-app .
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 650251696449.dkr.ecr.us-east-1.amazonaws.com && docker tag wiz-web-app:latest 650251696449.dkr.ecr.us-east-1.amazonaws.com/wiz-repo:latest && docker push 650251696449.dkr.ecr.us-east-1.amazonaws.com/wiz-repo:latest
docker tag wiz-web-app:latest 650251696449.dkr.ecr.us-east-1.amazonaws.com/my-web-app:latest
docker push 650251696449.dkr.ecr.us-east-1.amazonaws.com/my-web-app:latest
aws ecr describe-repositories --query 'repositories[*].repositoryName' --output text
aws ecr create-repository --repository-name wiz-repository --region us-east-1
docker tag wiz-web-app:latest 650251696449.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:latest
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 650251696449.dkr.ecr.us-east-1.amazonaws.com
docker push 650251696449.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:latest
cat <<EOF > deployment.yamlapiVersion: apps/v1kind: Deploymentmetadata:  name: wiz-appspec:  replicas: 1  selector:    matchLabels:      app: wiz-web  template:    metadata:      labels:        app: wiz-web    spec:      containers:      - name: python-web        image: 650251696449.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:latest        ports:        - containerPort: 80        env:        - name: MONGO_URI          value: "10.20.1.51" # <--- PUT MONGODB PRIVATE IP HERE---apiVersion: rbac.authorization.k8s.io/v1kind: ClusterRoleBindingmetadata:  name: app-admin-accesssubjects:- kind: ServiceAccount  name: default  namespace: defaultroleRef:  kind: ClusterRole  nam














aws ec2 describe-instances --query 'Reservations[*].Instances[*].{Name:Tags[?Key==\Name`].Value | [0], PrivateIP:PrivateIpAddress}' --output table`
aws ec2 describe-instances --query 'Reservations[*].Instances[*].{Name:Tags[?Key==\
cat <<EOF > deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: wiz-app
spec:
  replicas: 1
  selector:
    matchLabels:
      app: wiz-web
  template:
    metadata:
      labels:
        app: wiz-web
    spec:
      containers:
      - name: python-web
        image: 650251696449.dkr.ecr.us-east-1.amazonaws.com/wiz-repository:latest
        ports:
        - containerPort: 80
        env:
        - name: MONGO_URI
          value: "10.20.1.51"
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: app-admin-access
subjects:
- kind: ServiceAccount
  name: default
  namespace: default
roleRef:
  kind: ClusterRole
  name: cluster-admin
  apiGroup: rbac.authorization.k8s.io
EOF

kubectl apply -f deployment.yaml
kubectl get pods
kubectl logs wiz-app-7fd6b64bcf-7htkm
kubectl port-forward wiz-app-7fd6b64bcf-7htkm 8080:80
