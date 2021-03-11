FROM  docker:stable

RUN apk add npm nodejs git

# fix error "No user exists for uid 1001" from git and ssh
ARG USER_ID=1001
ARG GROUP_ID=1001
RUN groupadd -g $GROUP_ID user && \
    useradd -u $USER_ID -s /bin/sh -g user user

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]