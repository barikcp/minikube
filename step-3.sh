

#Install Minikube

wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64   # Download the package
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube
minikube version
sudo minikube start --driver=docker --force   # Install Minikube
kubectl get node          # Check the status of the node
