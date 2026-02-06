FROM scottyhardy/docker-wine:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    winetricks \
    cabextract \
    unzip \
    mesa-utils \
    libgl1 \
    libgl1-mesa-dri \
    libvulkan1 \
    vulkan-tools \
    libegl1 \
    && rm -rf /var/lib/apt/lists/*

ENV WINEARCH=win32
ENV WINEPREFIX=/wine32

RUN wineboot --init

RUN winetricks -q dxvk

ENV PATH="/wine32/drive_c/windows/system32:${PATH}"
