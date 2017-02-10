#Imagen base a utilizar
FROM debian

#Actualización de paquetes
RUN apt-get update

#Instalación de HAProxy
RUN apt-get install -y haproxy

#Añadimos el fichero de configuración
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

#Iniciamos el servicio
RUN service haproxy start

#Prueba

#Puertos de escucha
EXPOSE 80 8081 443 21
