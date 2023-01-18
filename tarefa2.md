## Tarefa 2

A linguagem NCL dá suporte a aplicações interativas, ou seja, aplicações em que o usuário pode interagir com o conteúdo que está sendo apresentado a ele. Na nova versão da linguagem (NCL 4.0) é possível especificar diferentes modalidades de interação, como interação por fixação do olhar, por voz, por gestos, ou reconhecimento facial, por exemplo. 

Esta segunda tarefa utiliza essa funcionalidade da linguagem, adicionando interatividade por voz, por gesto e fixação do olhar à aplicação criada na Tarefa 1. Para isso, faça uma cópia do arquivo tarefa1.ncl e renomeie para tarefa2.ncl.

A aplicação deverá possibilitar que o usuário interaja com o conteúdo de qualquer um dos três vídeos, pausando-os ou então reiniciando-os. Dessa forma, o autor da aplicação deverá definir as seguintes interações:
* Quando o usuário fizer o gesto de mão aberta, o vídeo em execução deverá ser pausado.
* Quando o usuário falar a palavra “TOCAR”, o vídeo em execução deverá voltar a ser reproduzido, caso esteja pausado.

Dicas:
* O gesto de mão aberta é configurado com o nome “OPEN” na aplicação NCL
* O evento de reconhecimento de voz é onVoiceRecognition
* O evento de reconhecimento de gesto é onHandPoseRecognition

Após a execução da tarefa 2, teste a aplicação criada utilizando o comando abaixo: `./ginga ../../Tarefa/tarefa2.ncl -e -f`

Para simular a interação do usuário por voz ou gesto, podemos utilizar o protocolo MQTT.</br>
Comando MQTT para interação por voz: `mosquitto_pub -m "tocar" -t "voice_recog"`</br>
Comando MQTT para interação por gesto: `mosquitto_pub -m "OPEN" -t "handpose_recog"`