FROM node:11

LABEL "com.github.actions.name"="Build"
LABEL "com.github.actions.description"="Configure and build"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/superfly/fly"
LABEL "homepage"="https://github.com/superfly/fly"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]