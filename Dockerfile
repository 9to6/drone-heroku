# Docker image for the Drone Heroku plugin
#
#     cd $GOPATH/src/github.com/drone-plugins/drone-heroku
#     make deps build
#     docker build --rm=true -t plugins/drone-heroku .

FROM alpine:3.2

RUN apk update && \
  apk add \
    ca-certificates \
    git \
    openssh \
    curl \
    perl && \
  rm -rf /var/cache/apk/*

ADD drone-heroku /bin/
ENTRYPOINT ["/bin/drone-heroku"]
