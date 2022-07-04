#iniciando pela imagem eap74-openjdk11-openshift-rhel8
FROM registry.redhat.io/jboss-eap-7/eap74-openjdk11-openshift-rhel8

#definindo autoria do container
MAINTAINER "David S. Ferreira" "dferreira.academia@oraex.com.br"

#criando diretório para receber o copy do source da aplicação
RUN mkdir -p /home/jboss/containerizacao-aplicacao

#copiando source da aplicação
COPY . /home/jboss/containerizacao-aplicacao

#definindo usuário jboss como owner do diretorio jboss-eap-quickstarts
USER root
RUN chown -R jboss:jboss /home/jboss/containerizacao-aplicacao
USER jboss

#definindo o workdir para rodar o maven
WORKDIR /home/jboss/containerizacao-aplicacao/helloworld

#fazendo build/deploy da aplicação para o jboss eap com o maven
RUN mvn clean install ; cp /home/jboss/containerizacao-aplicacao/helloworld/target/helloworld.war /opt/eap/standalone/deployments
