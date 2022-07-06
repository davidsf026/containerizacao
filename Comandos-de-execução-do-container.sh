#!/bin/bash

###################################### DOCKER #############################################
# O COMANDO PARA FAZER O BUILD DO CONTAINER NO DOCKER É:
# sudo docker build -t jboss-eap-hello-world-img .

# O COMANDO PARA DAR O RUN NO CONTAINER NO DOCKER É:
# sudo docker run -d --name jboss-eap-hello-world -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-hello-world-img

###################################### PODMAN #############################################
# O COMANDO PARA FAZER O BUILD DO CONTAINER NO PODMAN É:
# sudo docker build -t jboss-eap-hello-world-img .

# O COMANDO PARA DAR O RUN NO CONTAINER NO PODMAN É:
# sudo docker run -d --name jboss-eap-hello-world -p 8080:8080 -p 8443:8443 -p 8778:8778 jboss-eap-hello-world-img

###################################### OPENSHIFT #############################################
# O COMANDO PARA CRIAR O PROJETO QUE IRÁ HOSPEDAR O POD/CONTAINER NO OPENSHIFT É:
# oc new-project hello-world-project

# O COMANDO PARA FAZER O BUILD/RUN DO CONTAINER NO OPENSHIFT É:
# oc new-app --name jboss-eap-hello-world -n hello-world-project https://github.com/davidsf026/containerizacao-aplicacao/

# O COMANDO PARA EXPOR UMA ROTA PARA ESSE CONTAINER É:
# oc expose svc jboss-eap-hello-world -n hello-world-project

###################################### LEIA-ME ############################################
# ESSE ARQUIVO É UM SHELL SCRIPT E PODE SER RODADO PARA FACILITAR A EXEMPLIFICAÇÃO, O MESMO
# RODA OS COMANDOS DESCRITOS ACIMA, MAS DÁ A OPÇÃO DE ESCOLHER ENTRE DOCKER E PODMAN.

# NÃO SE ESQUEÇA DE DAR CHMOD 777 PARA O ARQUIVO DO SCRIPT E DE COLOCAR O CONTAINER FILE E
# SOURCE (SE NECESSÁRIO) NO MESMO DIRETÓRIO DO SHELL SCRIPT.

# PARA MAIS INFORMAÇÕES LEIA O ARQUIVO README.MD NA RAIZ DESSE REPOSITÓRIO. 

clear
echo "Você quer fazer o build/run deste container no Docker, Podman ou OpenShift?"
echo "1 — Docker"
echo "2 — Podman"
echo "3 — OpenShift"

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
elif [ $opcao == 3 ]
then
        echo 
        echo -e "\033[42;1;37mRodando o comando: oc new-project hello-world-project\033[0m"
        echo 
        sleep 5
        oc new-project hello-world-project

        echo 
        echo -e "\033[42;1;37mRodando o comando: oc new-app --name jboss-eap-hello-world -n hello-world-project https://github.com/davidsf026/containerizacao-aplicacao/\033[0m"
        echo 
        sleep 5
        oc new-app --name jboss-eap-hello-world -n hello-world-project https://github.com/davidsf026/containerizacao-aplicacao/

        echo 
        echo -e "\033[42;1;37mRodando o comando: oc expose svc jboss-eap-hello-world -n hello-world-project\033[0m"
        echo 
        sleep 5
        oc expose svc jboss-eap-hello-world -n hello-world-project
        echo 
else
        echo 
        echo -e "\033[41;1;37mErro! Rode o script novamente e informe um valor que seja igual a 1, 2 ou 3.\033[0m"
        echo 
fi
