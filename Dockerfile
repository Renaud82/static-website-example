FROM ubuntu
LABEL maintainer='Renaud Sautour'
RUN apt-get update
RUN apt-get install -y nginx
COPY ./static-website/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]