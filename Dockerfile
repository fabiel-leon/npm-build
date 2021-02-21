FROM  docker:stable

RUN apk add npm nodejs

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]