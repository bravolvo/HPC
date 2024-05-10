# Install docker on compute nodes
sudo yum install -y epel-release
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo groupadd docker                                
sudo usermod -aG docker ec2-user

# Install Singularity
sudo yum install -y singularity-ce
