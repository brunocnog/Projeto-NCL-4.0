## Tarefa 1

A linguagem NCL 4.0 permite a especificação de aplicações mulsemídia, onde é possível sincronizar efeitos sensoriais (aroma, luz, vibração, vento, etc..) com o conteúdo audiovisual. Dessa forma, é possível criar aplicações mais imersivas para os usuários e aumentar a qualidade de experiência. Neste contexto, a primeira tarefa consiste na criação de uma aplicação NCL com efeitos sensoriais.

Para essa primeira tarefa, faça o download da aplicação NCL que iremos utilizar como base, disponível neste link: https://drive.google.com/file/d/1S_JuKwzveOYm4Liq_A5UohsomAJN2kkW/view?usp=sharing
<br> _Caso tenha problema no download o arquivo está disponível neste repositório na pasta Arq-Trabalho._ </br>

O arquivo .zip baixado contém um arquivo denominado tarefa1.ncl, e uma pasta “media” que contém três arquivos de vídeo e um arquivo de  áudio. Após o download da aplicação NCL base, descompacte o conteúdo do arquivo no mesmo diretório da pasta “ginga-mulsemedia” criada na etapa de configuração do ambiente.
Altere o arquivo tarefa1.ncl, de forma a sincronizar um efeito de luz na cor laranja com o primeiro vídeo (mídia video1). O efeito de luz deve ser finalizado juntamente com o video1. Além disso, ao iniciar o segundo vídeo (mídia video2), um efeito de aroma de mar deve ser liberado. O efeito de aroma deve ter a mesma duração do segundo vídeo.

Dicas:
* O efeito sensorial é especificado em NCL 4.0 através da tag <effect>
* As características de um efeito podem ser configuradas tanto utilizando descritores ou propriedades do elemento <effect>.
* A cor de um efeito de luz pode ser definida utilizando o nome da cor em inglês ou o código RGB referente à cor desejada.
* O tipo de um efeito de aroma é definido conforme o padrão MPEG-V, para o aroma de mar, utilize o valor: `urn:mpeg:mpeg−v:01−SI−ScentCS−NS:sea`

Após a execução da tarefa 1, teste a aplicação criada utilizando o comando abaixo para executá-la: `./ginga ../../Tarefa/tarefa1.ncl -e -f`

#### Observações:
O comando para execução da aplicação NCL deve ser executado no diretório src, localizado dentro do diretório ginga-mulsemedia.
a flag -e indica que é pra executar o ginga no modo de emulação de efeitos sensoriais
a flag -f indica que a aplicação deve ser executada em fullscreen

Caso o resultado da execução não seja o desejado, verifique seu código NCL, atualize-o e execute-o novamente. Lembre-se de medir o tempo gasto para realizar a tarefa, marcando o horário de início e fim.
  
  ### Resolução da Tarefa1
  ![ezgif com-gif-maker](https://user-images.githubusercontent.com/93297020/213293103-5b06bca9-02a5-4bd5-b1be-40231bc8d736.gif)
