FROM  docker:stable

RUN apk add npm nodejs git yarn

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]