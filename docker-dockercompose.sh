!#/bin/bash
## download the gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
## Use the following command to set up the stable repository. You always need the stable repository, even if you want to install builds from the edge or test repositories as well. 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
echo "$(apt-cache policy docker-ce)"
sudo apt-get install -y docker-ce
echo "$(sudo systemctl status docker)"

##additonal : run docker without sudo (replace $user by any username)
sudo usermod -aG docker ${USER}
su ${USER}
echo "$(id -nG)"


####Install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
###setting permissions
sudo chmod +x /usr/local/bin/docker-compose

echo "$(docker-compose --version)"
