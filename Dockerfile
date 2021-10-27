FROM cm2network/steamcmd:latest

ADD src/start.sh /home/steam/start.sh

ENV EXPERIMENTAL=false

EXPOSE 15777/udp
EXPOSE 15000/udp
EXPOSE 7777/udp
VOLUME /home/steam/satisfactory/
VOLUME /home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server/

ENTRYPOINT [ "/home/steam/start.sh" ]
