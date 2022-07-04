#!/bin/bash

###################################### DOCKER #############################################
# O COMANDO PARA FAZER O BUILD DO CONTAINER NO DOCKER É:
# sudo docker build -t jboss-eap-img .

# O COMANDO PARA DAR O RUN NO CONTAINER NO DOCKER É:
# sudo docker run -d --name jboss-eap -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-img

###################################### PODMAN #############################################
# O COMANDO PARA FAZER O BUILD DO CONTAINER NO PODMAN É:
# sudo docker build -t jboss-eap-img .

# O COMANDO PARA DAR O RUN NO CONTAINER NO PODMAN É:
# sudo docker run -d --name jboss-eap -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-img

###################################### LEIA-ME ############################################
# ESSE ARQUIVO É UM SHELL SCRIPT E PODE SER RODADO PARA FACILITAR A EXEMPLIFICAÇÃO, O MESMO
# RODA OS COMANDOS DESCRITOS ACIMA, MAS DÁ A OPÇÃO DE ESCOLHER ENTRE DOCKER E PODMAN.

# NÃO SE ESQUEÇA DE DAR CHMOD 777 PARA O ARQUIVO DO SCRIPT E DE COLOCAR O CONTAINER FILE E
# SOURCE (SE NECESSÁRIO) NO MESMO DIRETÓRIO DO SHELL SCRIPT.

# PARA MAIS INFORMAÇÕES LEIA O ARQUIVO README.MD NA RAIZ DESSE REPOSITÓRIO. 

clear
echo "Você quer fazer o build/run deste container no Docker ou no Podman?"
echo "1 — Docker"
echo "2 — Podman"

echo 
read -p "Escolha uma opção: " opcao

if [ $opcao == 1 ]
then
        echo 
        echo -e "\033[42;1;37mRodando o comando: sudo docker build -t jboss-eap-img .\033[0m"
        echo 
        sleep 5
        sudo docker build -t jboss-eap-img .

        echo 
        echo -e "\033[42;1;37mRodando o comando: sudo docker run --name jboss-eap -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-img\033[0m"
        echo 
        sleep 5
        sudo docker run -d --name jboss-eap -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-img
        echo 
elif [ $opcao == 2 ]
then
        echo 
        echo -e "\033[42;1;37mRodando o comando: podman build -t jboss-eap-img .\033[0m"
        echo 
        sleep 5
        podman build -t jboss-eap-img .

        echo 
        echo -e "\033[42;1;37mRodando o comando: podman run --name jboss-eap -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-img\033[0m"
        echo 
        sleep 5
        podman run -d --name jboss-eap -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-img
        echo 
else
        echo 
        echo -e "\033[41;1;37mErro! Rode o script novamente e informe um valor que seja igual a 1 ou 2.\033[0m"
        echo 
fi
