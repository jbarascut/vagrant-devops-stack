#docker
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get update -y
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
#terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt update -y && sudo apt install -y terraform
#jq
sudo apt install -y jq
#kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl*
#argocdcli
sudo curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo chmod +x /usr/local/bin/argocd
#k9s
wget -c https://github.com/derailed/k9s/releases/download/v0.25.15/k9s_Linux_x86_64.tar.gz
tar xvf k9s_Linux_x86_64.tar.gz k9s
sudo mv k9s /usr/local/bin/k9s
rm -rf k9s*
#iptables
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 443 -j DNAT --to 172.17.0.9:443
sudo iptables -A FORWARD -p tcp -d 172.17.0.9 --dport 443 -j ACCEPT