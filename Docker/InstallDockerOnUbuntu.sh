#############################################################
#  ____  _____ ____ _   _ ____  _____ __  __ ___ _   _ ____  
# / ___|| ____/ ___| | | |  _ \| ____|  \/  |_ _| \ | |  _ \ 
# \___ \|  _|| |   | | | | |_) |  _| | |\/| || ||  \| | | | |
#  ___) | |__| |___| |_| |  _ <| |___| |  | || || |\  | |_| |
# |____/|_____\____|\___/|_| \_\_____|_|_ |_|___|_| \_|____/ 
#          / \  / ___|  / \  |  _ \| ____|  \/  \ \ / /      
#         / _ \| |     / _ \ | | | |  _| | |\/| |\ V /       
#        / ___ \ |___ / ___ \| |_| | |___| |  | | | |        
#       /_/   \_\____/_/   \_\____/|_____|_|  |_| |_|        

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

docker --version

sudo systemctl start docker
sudo systemctl enable docker
