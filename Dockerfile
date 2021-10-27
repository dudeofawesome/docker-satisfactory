FROM cm2network/steamcmd:latest

ADD src/start.sh /home/steam/start.sh

ENV EXPERIMENTAL=false
ENV SERVER_QUERY_PORT=15777
ENV BEACON_PORT=15000
ENV PORT=7777

EXPOSE 15777/udp
EXPOSE 15000/udp
EXPOSE 7777/udp
VOLUME /home/steam/satisfactory/
VOLUME /home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server/

ENTRYPOINT [ "/home/steam/start.sh" ]
