FROM nginx:1.23.1

WORKDIR /etc/nginx
COPY configs/nginx.conf .

WORKDIR /etc/nginx/conf.d
COPY configs/webgl.conf ./default.conf

WORKDIR /webgl
ADD build/WebGL/ ./
