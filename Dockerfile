FROM ubuntu:jammy
RUN apt update && apt install -y -q \
    nginx \
    && \
    rm -rf /var/lib/apt/lists/*

COPY configs/entrypoint.sh .
COPY build/WebGL .
COPY configs/nginx.conf /etc/nginx/
ENTRYPOINT [ "/entrypoint.sh" ]