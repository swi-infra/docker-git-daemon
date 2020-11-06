FROM alpine:edge

RUN apk add --no-cache git-daemon

ADD git-daemon.sh /usr/bin/git-daemon.sh
VOLUME /git

# git daemon ports
EXPOSE 9418

RUN \
    git config --global core.bigFileThreshold 5m && \
    git config --global pack.allowPackReuse true

CMD /usr/bin/git-daemon.sh
