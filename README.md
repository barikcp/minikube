# Install minikube
minikube

Step-1:  Install Docker.​ 

    sudo apt-get update   # Update the apt package index
      
    # install packages to allow apt to use a repository over HTTPS
    sudo apt-get install \              
    ca-certificates \
    curl \
    gnupg \
    lsb-release ​                                                              

    # Add Docker’s official GPG key:  
    sudo mkdir -p /etc/apt/keyrings​      
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg       
     
    # set up the repository
    
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    
    #Install Docker Engine
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
    
    #Check Docker process staus
     ps -eaf|grep docker
     sudo service docker status  # press q to exit


Step-2: Install Kubectl.​ 
   
    sudo apt-get update        # Update the apt package
    
    sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg       # Download the google public key
    
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee    /etc/apt/sources.list.d/kubernetes.list     #Add the Kubernetes apt repository
    
    sudo apt-get update
    
    sudo apt-get install -y kubectl           #install kubect


Step-3: Install Minikube.​ 

  sudo apt-get update        # Update the apt package

  sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg       # Download the google public key

  echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee    /etc/apt/sources.list.d/kubernetes.list     #Add the Kubernetes apt repository

  sudo apt-get update

  sudo apt-get install -y kubectl           #install kubect



