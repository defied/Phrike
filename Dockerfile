FROM ubuntu:jammy
WORKDIR /
# ADD configs/entrypoint.sh /
# EXPOSE 7777/udp
ADD build/StandaloneLinux64/StandaloneLinux64 /
RUN ls -al
RUN chmod u+x StandaloneLinux64.x86_64
ENTRYPOINT [ "./StandaloneLinux64.x86_64" ]