FROM lsiobase/webtop:ubuntu-kde

RUN \
 echo "**** install packages ****" && \
 pushd /tmp && \
 wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb && \
 apt install -y ./steam.deb && \
 echo "**** cleanup ****" && \
 rm -rf \
    /tmp/*

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config
