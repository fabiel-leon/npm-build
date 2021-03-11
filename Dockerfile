FROM  docker:stable

RUN apk add npm nodejs git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]