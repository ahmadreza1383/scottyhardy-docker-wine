### Initializing
FROM scottyhardy/docker-wine:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:99

RUN apt update -y && \
    apt install -y winetricks xvfb

### Run winetricks with virtual X server
RUN xvfb-run -a winetricks corefonts vcrun6 comctl32
