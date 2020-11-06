FROM alpine:edge

RUN apk add --no-cache git-daemon

ADD git-daemon.sh /usr/bin/git-daemon.sh
VOLUME /git

# git daemon ports
EXPOSE 9418

CMD /usr/bin/git-daemon.sh
