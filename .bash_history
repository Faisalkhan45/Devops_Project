clear
docker --version
sudo apt update -y
sudo apt install docker-compose -y
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo gpg --dearmor -o /usr/share/keyrings/mongodb.gpg
echo "deb [signed-by=/usr/share/keyrings/mongodb.gpg] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt install -y mongodb-org
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu focal main"
sudo apt update -y
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
git clone https://github.com/Anand-1432/Techdome-backend
git clone https://github.com/Anand-1432/Techdome-frontend
ls
cd Techdome-backend
ls
vim Dockerfile
cd ..
cd Techdome-frontend
vim Dockerfile
vim docker-compose.yml
sudo usermod -aG docker $USER
newgrp docker
cd Techdome-backend
ls
mv docker-compose.yml ~/
ls
cd ..
ls
cd Techdome-backend
ls
vim server.js
cd ..
docker-compose up --build
ls
pwd
clear
ls
scp -i "C:\Users\faisa\OneDrive\Documents\KEY PAIRS\WIN-KEY-PEM.pem" -r ubuntu@13.201.91.62:/home/ubuntu/* "C:\Users\faisa\OneDrive\Desktop\project"
cleare
ls
clear
ls
scp -i "C:\Users\faisa\OneDrive\Documents\KEY PAIRS\WIN-KEY-PEM.pem" -r ubuntu@13.201.91.62:/home/ubuntu/* "C:\Users\faisa\OneDrive\Desktop\project"
scp -i "C:\\Users\\faisa\\OneDrive\\Documents\\KEY PAIRS\\WIN-KEY-PEM.pem" -r ubuntu@13.201.91.62:/home/ubuntu/* "C:\\Users\\faisa\\OneDrive\\Desktop\\project"
clear
ls
