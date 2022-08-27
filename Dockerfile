FROM httpd:2.4
# FROM httpd:2.4-alpine
LABEL org.opencontainers.image.source https://github.com/defied/phrike
COPY build/WebGL/ /usr/local/apache2/htdocs/
# EXPOSE 80
