Preparar servidor ubuntu para ejecutar docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y docker-engine && sudo usermod -aG docker $(whoami)

Instalar docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose

clona el repositiorio
git clone https://github.com/wetrust/api.git

Entra al directorio de la aplicacion
cd api

Instalar dependencias
docker run --rm --interactive --tty \
   --volume $PWD:/app \
   composer install --ignore-platform-reqs --no-scripts

Actualice los siguientes archivos por su configuración personal
application/config/config.php
 linea 13
 linea 14
 linea 41
 linea 74
 linea 105
 linea 106
nginx/conf.d/server.ssl
 linea 4 (dominio)
 linea 21,22,23 (dominio)
 comente desde linea 39 hasta linea 43 para desarrollo en servidor
docker-compose.yml
 linea 33, 35 - 36 (contraseñas)

Preparar la certificacion
nginx/conf.d/server.certificator -> server.conf

Crear un contenedor temporal para certificar
docker run --name nginx -v ~/api/nginx/conf.d:/etc/nginx/conf.d -v ~/api/letsencrypt/certs:/etc/letsencrypt -v ~/api/letsencrypt/data:/data/letsencrypt -p 80:80 -p 443:443 -d nginx

Certificar
docker run -it --rm -v ~/api/letsencrypt/certs:/etc/letsencrypt -v ~/api/letsencrypt/data:/data/letsencrypt deliverous/certbot  certonly --webroot --webroot-path=/data/letsencrypt -d localhost

Eliminar contenedores temporales
docker stop nginx && docker rm nginx && docker rmi nginx:latest

Eliminamos archivo nginx temporal
nginx/conf.d/server.conf

Renombrar archivo
nginx/conf.d/server.ssl -> server.conf

Levante la plataforma
docker-compose up