FROM ubuntu:24.04

ARG ELEMENTUM_VERSION=0.1.119
ARG ADDON_NAME=plugin.video.elementum
ARG ELEMENTUM_ARCH=linux_x64

RUN apt-get update && \
    apt-get install -y --no-install-recommends ca-certificates wget unzip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# ubuntu:24.04 already ships the 'ubuntu' user (uid 1000), no useradd needed
USER ubuntu
WORKDIR /home/ubuntu

RUN wget "https://github.com/elgatito/${ADDON_NAME}/releases/download/v${ELEMENTUM_VERSION}/${ADDON_NAME}-${ELEMENTUM_VERSION}.${ELEMENTUM_ARCH}.zip" \
        -O /tmp/addon.zip && \
    unzip /tmp/addon.zip -d /home/ubuntu/ && rm /tmp/addon.zip && \
    mkdir -p elementum_data/elementum_addon_data \
             elementum_data/elementum_torrents \
             elementum_data/elementum_library \
             elementum_downloads

VOLUME /home/ubuntu/elementum_data
VOLUME /home/ubuntu/elementum_downloads

# Elementum is MIT licensed (elgatito/plugin.video.elementum, LICENSE file in the release zip).
LABEL org.opencontainers.image.title="elementum" \
      org.opencontainers.image.description="Elementum torrent streaming daemon for Kodi client-server mode" \
      org.opencontainers.image.source="https://github.com/elgatito/plugin.video.elementum" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.version="${ELEMENTUM_VERSION}"

ENTRYPOINT ["/home/ubuntu/plugin.video.elementum/resources/bin/linux_x64/elementum"]
