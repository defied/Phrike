FROM ubuntu:jammy
WORKDIR /
# ADD configs/entrypoint.sh /
EXPOSE 7777
ADD build/StandaloneLinux64/ /
RUN ls -al
RUN chmod u+x StandaloneLinux64
ENTRYPOINT [ "./StandaloneLinux64", "-nographics", "-mode", "server" ]
# ENTRYPOINT while [ -z ];do sleep 10;done
