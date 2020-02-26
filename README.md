# likesistemas/openstreetmap-tile-server

* Essa imagem apenas facilita a utilização do container Docker: Overv/openstreetmap-tile-server *

Imagem docker criada para criar um servidor de tiles com os dados do Open Street Maps de uma determinada url informada como argumento.

Obs.: Por padrão está configurada para sul do Brasil.

Para usar usar a imagem passando o seguinte comando:

docker run -d -p 8080:80 likesistemas/openstreetmap-tile-server:latest run