FROM ubuntu:jammy

WORKDIR /
ADD configs/entrypoint.sh /

ADD build/StandaloneLinux64/ /
ENTRYPOINT [ "./StandaloneLinux64" ]