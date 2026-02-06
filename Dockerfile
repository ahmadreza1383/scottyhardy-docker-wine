### Initializing
FROM scottyhardy/docker-wine:latest

RUN apt update -y

RUN apt install winetricks -y

winetricks dxvk
