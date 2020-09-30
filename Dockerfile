FROM  docker:stable

RUN apk add jq
RUN apk add gettext
RUN apk add npm nodejs
RUN apk add rsync
RUN npm install -g js-yaml asciidoctor.js@1.5.5-1 json2yaml

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]