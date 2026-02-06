### Initilizing
FROM scottyhardy/docker-wine:latest

RUN apt update -y

### Winetricks
RUN apt install winetricks -y

RUN winetricks corefonts vcrun6 comctl32
