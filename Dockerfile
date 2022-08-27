FROM nginx:1.23.1

WORKDIR /etc/nginx
COPY configs/nginx.conf .

WORKDIR /etc/nginx/conf.d
COPY configs/webgl.conf ./default.conf

WORKDIR /webgl
ADD build/WebGL/ ./




# FROM httpd:2.4
# # FROM httpd:2.4-alpine
# LABEL org.opencontainers.image.source https://github.com/defied/phrike
# COPY build/WebGL/ /usr/local/apache2/htdocs/
# COPY configs/.htaccess /usr/local/apache2/htdocs/
# # EXPOSE 80
