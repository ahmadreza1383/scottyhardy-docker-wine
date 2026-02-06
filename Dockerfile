FROM scottyhardy/docker-wine:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    winetricks \
    cabextract \
    unzip \
    && rm -rf /var/lib/apt/lists/*

ENV WINEARCH=win32
ENV WINEPREFIX=/wine32

RUN wineboot --init

RUN winetricks -q dxvk
