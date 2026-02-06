FROM scottyhardy/docker-wine:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    winetricks \
    cabextract \
    unrar \
    unzip \
    mesa-utils \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libvulkan1 \
    vulkan-utils \
    libegl1 \
    && rm -rf /var/lib/apt/lists/*

ENV WINEARCH=win32
ENV WINEPREFIX=/wine32

RUN wineboot --init

RUN winetricks -q dxvk

ENV PATH="/wine32/drive_c/windows/system32:${PATH}"
