# Docker for git-daemon

Image based on alpine.

## Quick start

```bash
docker run --name git-daemon
           -d \
           -p 9418:9418 \
           -v /var/git:/git \
           quay.io/swi-infra/git-daemon
```

## Options

```bash
docker run --name git-daemon
           -d \
           -p 9418:9418 \
           -v /var/git:/git \
           -e "OPTION_NAME=OPTION_VALUE" \
           quay.io/swi-infra/git-daemon
```

* `STRICT_PATHS`    : 0 or 1, default 0
* `INIT_TIMEOUT`    : numeric, 0 - use git default value
* `TIMEOUT`         : numeric, 0 - use git default value
* `MAX_CONNECTIONS` : numeric, default 32
* `VERBOSE`         : 0 or 1, default 0
* `REUSEADDR`       : 0 or 1, default 1

## References

- http://git-scm.com/docs/git-daemon
