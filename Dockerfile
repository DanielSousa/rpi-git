FROM alpine:3.8
LABEL maintainer Daniel Sousa <danielosousa@gmail.com>

RUN apk --update add git openssh && \
rm -rf /var/lib/apt/lists/* && \
rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
