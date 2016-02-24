FROM debian:jessie
MAINTAINER asmaps <docker@asmaps.de>

RUN apt-get update && apt-get install -y mosquitto

EXPOSE 1883

ENTRYPOINT "mosquitto"
CMD ["-c", "/etc/mosquitto/mosquitto.conf"]
