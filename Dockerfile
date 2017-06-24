FROM voxxit/base:alpine

MAINTAINER Glenn Meuth <vortarian (at) systemicai.com>

RUN  apk add --update rsyslog \
  && rm -rf /var/cache/apk/*

EXPOSE 514 514/udp

VOLUME [ "/var/log", "/etc/rsyslog.d" ]

# for some reason, the apk comes built with a v5
# config file. using this one for v8:
COPY ./etc/rsyslog.conf /etc/rsyslog.conf

ENTRYPOINT [ "rsyslogd", "-n" ]

LABEL Repo="https://github.com/vortarian/syslogdocker"
LABEL ExampleStart="docker run -d --name syslog-containers -v /var/log/container-syslog:/var/log syslog"
LABEL ExampleLink="docker run --link syslog-containers ubuntu logger hello"

