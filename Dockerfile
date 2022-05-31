FROM scratch

ADD rootfs.tar.xz /

WORKDIR /app/go-movies
COPY ./linux_amd64/go_movies_linux_amd64 /app/go-movies

CMD ["./go_movies_linux_amd64"]
