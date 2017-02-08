#Imagen base a utilizar
FROM debian

#Actualización de paquetes
RUN apt update -y

#Instalación de HAProxy
RUN apt install -y haproxy

#Añadimos el fichero de configuración
ADD haproxy.cfg /etc/haproxy/haproxy.cfg

#Reiniciamos el servicio
RUN systemctl restart haproxy

#Puertos de escucha
EXPOSE 80 443 21
