FROM scratch

ADD rootfs.tar.xz /

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends ca-certificates curl

WORKDIR /app/go-movies
COPY ./linux_amd64/go_movies_linux_amd64 /app/go-movies

CMD ["./go_movies_linux_amd64"]
