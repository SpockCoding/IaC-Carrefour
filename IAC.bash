#!/bin/bash
#Projeto Infra as Code Carrefour

echo "criacao dos diretorios...."

sudo mkdir /public
chmod 777 -R /public
sudo mkdir /admin
sudo mkdir /ven
sudo mkdir /sec

echo "criacao dos grupos...."

sudo groupadd  GRP_ADM
sudo groupadd  GRP_VEN
sudo groupadd  GRP_SEC

echo "mudar o grupo dono dos diretorios...."

sudo chgrp GRP_ADM -R /admin
sudo chgrp GRP_VEN -R /ven
sudo chgrp GRP_SEC -R /sec


echo "criacao dos usuarios grupo ADM...."

sudo useradd carlos -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
sudo useradd maria -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
sudo useradd joao -G GRP_ADM -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "criacao dos usuarios grupo VENDAS...."

sudo useradd debora -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
sudo useradd sebastiana -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
sudo useradd roberto -G GRP_VEN -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "criacao dos usuarios grupo SEC...."

sudo useradd josefa -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
sudo useradd amanda -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
sudo useradd rogerio -G GRP_SEC -m -s /bin/bash -p $(openssl passwd -crypt Senha123)



