FROM scratch

ADD rootfs.tar.xz /

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && sed -i 's/security.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends ca-certificates curl

WORKDIR /app/go-movies
COPY . /app/go-movies

RUN chmod 777 ./linux_amd64/go_movies_linux_amd64

CMD ["./linux_amd64/go_movies_linux_amd64"]
