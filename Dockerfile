FROM ubuntu:jammy
WORKDIR /
ADD configs/entrypoint.sh /
EXPOSE 7777/udp
ADD build/StandaloneLinux64/ /
RUN chmod u+x StandaloneLinux64
ENTRYPOINT [ "./StandaloneLinux64" ]