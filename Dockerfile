FROM nginx:alpine

COPY ./nginx.conf ./etc/nginx/conf.d/default.conf
COPY ./cert.pem ./etc/ssl/
COPY ./key.pem ./etc/ssl/

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]