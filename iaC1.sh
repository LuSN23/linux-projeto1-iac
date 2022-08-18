#!/bin/bash

echo "Criando diretórios..."
#Criação dos diretórios:
mkdir /publico /adm /ven /sec

echo "Criando grupos..."
#Criação dos grupos:
groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."
#Criação dos usuários:
useradd carlos -c "Carlos Costa" -m -s /bin/bash -p $(openssl passwd 123)
useradd maria -c "Maria Aparecida" -m -s /bin/bash -p $(openssl passwd 123)
useradd joao -c "João dos Santos" -m -s /bin/bash -p $(openssl passwd 123)

useradd debora -c "Débora Oliveira de Castro" -m -s /bin/bash -p $(openssl passwd 123)
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd 123)
useradd roberto -c "Roberto Figueroa Nunes" -m -s /bin/bash -p $(openssl passwd 123)

useradd josefina -c "Josefina das Dores" -m -s /bin/bash -p $(openssl passwd 123)
useradd amanda -c "Amanda Vasconcelos" -m -s /bin/bash -p $(openssl passwd 123)
useradd rogerio -c "Rogério de Mattos" -m -s /bin/bash -p $(openssl passwd 123)

echo "Distribuindo os usuários em seus grupos..."
#Classificação dos usuários em grupos:
#GRP_ADM:
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
#GRP_VEN:
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
#GRP_SEC:
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Designando as permissões dos diretórios..."
#/publico:
chmod 777 /publico
#/adm: 
chmod 770 /adm
#/ven:
chmod 770 /ven
#/sec:
chmod 770 /sec

echo "Designando o dono dos grupos..."
#Designando o usuário root como dono de todos os grupos: 
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#Finalizando o script:
echo "Finalizando..."
