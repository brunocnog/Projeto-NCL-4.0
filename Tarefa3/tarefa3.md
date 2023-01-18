## TAREFA 3

Uma aplicação NCL 4.0 pode ser especificada de forma a identificar o usuário que está interagindo com o conteúdo. Dessa forma é possível criar uma aplicação onde a interação só será habilitada para um perfil específico de usuário. Por exemplo, em uma aplicação de comércio eletrônico, a interação de comprar um item poderia ser habilitada apenas se o perfil for de uma pessoa maior de idade. Esta característica da linguagem pode ser obtida pela identificação dos usuários em links NCL, utilizando o atributo user. 

A terceira tarefa inclui a funcionalidade de identificação de usuário na aplicação NCL desenvolvida na tarefa 2. Para isso, faça uma cópia do arquivo tarefa2.ncl e renomeie para tarefa3.ncl.

Nessa nova aplicação, deverá ser apresentada uma imagem (arquivo “img1” localizado no diretório media) no início do terceiro vídeo oferecendo um produto a ser comprado. Se durante a apresentação da imagem “img1” for dita a palavra “COMPRAR” por um usuário do perfil masculino, a aplicação deverá apresentar uma outra imagem confirmando a compra (você pode escolher a imagem a ser apresentada nesta etapa), e finalizar a apresentação da imagem “img1”. Essa segunda imagem deverá ter duração de 3 segundos.

O perfil alvo da aplicação (perfil masculino) se encontra no diretório da tarefa, no arquivo profile.xml.

Após a execução da tarefa 3, teste a aplicação criada utilizando o comando abaixo: `./ginga ../../Tarefa/tarefa3.ncl -e -f `

Instruções para utilização de perfil de usuário no ambiente de execução:
Baixe os arquivos nesse link (https://drive.google.com/drive/folders/1L3_F0mg8VxPCcJrLbPhexRIkyIww8zwv?usp=sharing), que descrevem os perfis de usuário para o ambiente de execução e salve na pasta {home/nome_usuario}/gingaFiles/users/
O perfil usr1.xml representa um usuário do sexo feminino, de nome Maria, com id U01.
O perfil usr2.xml representa um usuário do sexo masculino de nome Fabio, com id U02.
Para que imagens apareçam na tela, elas devem ser posicionadas à frente do vídeo principal (dica: use a propriedade zIndex).

Para simular a interação do usuário por voz ou gesto, podemos utilizar o protocolo MQTT.</br>
Comando MQTT para interação por voz, com identificação de usuário: `mosquitto_pub -m "<id>:comprar" -t "voice_recog"` </br>
Comando MQTT para interação por gesto, com identificação de usuário: `mosquitto_pub -m "<id>:comprar" -t "handpose_recog"`</br>

Obs: <id> é o id do usuário