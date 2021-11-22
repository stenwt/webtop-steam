FROM linuxserver/webtop:ubuntu-kde

RUN \
 wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb && \
 apt install -y ./steam.deb && \
 rm -f steam.deb 

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config
