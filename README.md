
# Containerização - Aplicação

## O que é?
Este exemplo demonstra o uso da CDI 1.0 e Servlet 3 no Red Hat JBoss Enterprise Application Platform.

Saiba mais sobre [nesse tutorial.](http://www.jboss.org/jdf/quickstarts/jboss-as-quickstart/guide/HelloworldQuickstart)

## Autores

- [davidsf026](https://www.github.com/davidsf026)

- [pedrosousa-dev](https://github.com/pedrosousa-dev)

- [Glocker1v4](https://github.com/Glocker1v4)

- [jaokk](https://github.com/jaokk)


## Requisitos de sistema
A aplicação gerada por esse projeto foi desenvolvida para rodar no Red Hat JBoss Enterprise Application Platform versão 6.1 ou superior.

Para a build do projeto, é necessário apenas o Java 6.0 (Java SKD 1.6) ou superior, Maven 3.0 ou superior.
## Configuração do Maven
Caso ainda não tenha sido configurado, antes de testar o guia é necessário [configurar o Maven.](https://github.com/jboss-developer/jboss-developer-shared-resources/blob/master/guides/CONFIGURE_MAVEN_JBOSS_EAP7.md#configure-maven-to-build-and-deploy-the-quickstarts)  

## Iniciando o servidor JBoss
1. Abra um terminal e navegue até o diretório raiz do servidor JBoss.
2. Execute o arquivo à seguir, de acordo com seu sistema operacional:
```console
No linux: JBOSS_HOME/bin/standalone.sh
No Windows: JBOSS_HOME\bin\standalone.bat
```


## Build e Deploy do guia
*NOTA: A configuração prévia do seu usuário Maven é imprescindível para os comandos de build à seguir.
Caso ainda não o tenha feito, será necessário incluir suas configurações do Maven na linha de comando.
Veja [Build e deploy de guias](https://gist.github.com/pmuir/1933116#runningquickstarts) para as instruções completas e opções adicionais.*

1. Verifique que o servidor JBoss já tenha iniciado, como descrito anteriormente.
2. Abra o terminal e navegue até o diretório raiz desse guia.
3. Digite o seguinte comando para iniciar o Build e Deploy do arquivo:
```console
mvn clean install jboss-as:deploy
```
4. O deploy de `target/jboss-helloworld.war` será iniciado à instância do servidor em execução.
## Acesso à aplicação
A aplicação estará executando na URL http://localhost:8080/helloworld .
## Undeploy do arquivo
1. Verifique se o servidor JBoss ainda esteja em execução.
2. Abra o terminal e navegue até o diretório raiz desse guia.
3. Quando finalizar os testes, digite o comando à seguir para o Undeploy do arquivo:
```console
mvn jboss-as:Undeploy
```
## Executando o guia no JBoss Developer Studio ou Eclipse
Também é possível iniciar o servidor e fazer o deploy dos guias pelo Eclipse usando a JBoss tools.
Para mais informações, veja [Usando o JBoss Developer Studio ou Eclipse para executar os guias](https://github.com/jboss-developer/jboss-eap-quickstarts/tree/7.0.0.Final/helloworld#run-the-quickstart-in-red-hat-jboss-developer-studio-or-eclipse)

## Debug da aplicação
Caso seja necessário o debug do código fonte ou ler a o Javadocs de qualquer biblioteca no projeto,
execute um dos seguintes comandos para subi-los para seu repositório local. A IDE deve então os detectar.
```console
mvn dependency:sources
mvn dependency:sources -Dclassifier=javadoc
```
