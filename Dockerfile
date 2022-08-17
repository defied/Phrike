FROM ubuntu:jammy
LABEL org.opencontainers.image.source https://github.com/defied/phrike
COPY configs/entrypoint.sh /
RUN apt update && apt install -y -q \
    nginx \
    sudo \
    && \
    rm -rf /var/lib/apt/lists/*

# Create a docker user with sudoer privileges:
RUN adduser --disabled-password --gecos '' docker && \
    usermod -aG sudo docker

# Set entry script, make executable by docker user:

RUN chown docker:docker /entrypoint.sh && \
    chmod 755 /entrypoint.sh && \
    which sh

CMD /bin/sh entrypoint.sh
COPY configs/entrypoint.sh .
# COPY build/WebGL /
COPY configs/nginx.conf /etc/nginx/
# Set environment to run as user.
# USER docker
