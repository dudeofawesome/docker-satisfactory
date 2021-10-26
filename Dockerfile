FROM cm2network/steamcmd:latest

ADD src/start.sh /home/steam/start.sh
RUN mkdir -p /home/steam/satisfactory/FactoryGame/Saved/

EXPOSE 15777/tcp
EXPOSE 15777/udp
EXPOSE 15000/tcp
EXPOSE 15000/udp
EXPOSE 7777/tcp
EXPOSE 7777/udp
VOLUME /home/steam/satisfactory/FactoryGame/Saved/

ENTRYPOINT [ "/home/steam/start.sh" ]
