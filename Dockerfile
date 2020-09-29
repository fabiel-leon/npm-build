FROM  docker:stable

LABEL "com.github.actions.name"="NPM Build"
LABEL "com.github.actions.description"="Buiuld an npm package"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/chimpwizards-pipeline/npm-build"
LABEL "homepage"="http://github.com/marketplace/chimpwizards"
LABEL "maintainer"="ndru@chimpwizard.com"

RUN apk add jq
RUN apk add gettext
RUN apk add npm nodejs
RUN npm install -g js-yaml asciidoctor.js@1.5.5-1 json2yaml

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]