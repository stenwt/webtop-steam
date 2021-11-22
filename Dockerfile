FROM linuxserver/webtop:ubuntu-kde

RUN \
 curl -LO https://cdn.akamai.steamstatic.com/client/installer/steam.deb && \
 apt update && apt install -y ./steam.deb && \
 rm -f steam.deb  && apt clean

# ports and volumes
EXPOSE 3000
