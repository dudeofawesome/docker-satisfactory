# Dedicated Satisfactory server

This is the official dedicated Satisfactory server, packed as a Docker image. It's currently in an experimental state. Be aware that things may change.

![Server logs and game](screenshot.jpg)

## Usage

Without docker-compose:

```sh
docker volume create satisfactory-server
docker volume create satisfactory-saves
docker run \
  -p 15777:15777/udp \
  -p 15000:15000/udp \
  -p 7777:7777/udp \
  -v satisfactory-server:/home/steam/satisfactory/ \
  -v satisfactory-saves:/home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server/ \
  therealhenning/satisfactory:latest
```

With docker-compose:

```yml
services:
  satisfactory:
    image: therealhenning/satisfactory:latest
    restart: always
    ports:
      - "15777:15777/udp"
      - "15000:15000/udp"
      - "7777:7777/udp"
    volumes:
      - satisfactory-server:/home/steam/satisfactory/FactoryGame/Saved/
      - satisfactory-saves:/home/steam/.config/Epic/FactoryGame/Saved/SaveGames/server/

volumes:
  satisfactory-server: {}
  satisfactory-saves: {}
```

The first server start up takes a while since the server files are downloaded from Steam. After the container was created and all the server files were downloaded initially, the server start up should be much faster.

## Environment variables

### `EXPERIMENTAL`

Setting it to `true` will download the experimental version of the server. Defaults to `false`.

### `SERVER_QUERY_PORT`

Configure the server query port. This is the port that you need to enter in the game when you first connect to a dedicated server. Defaults to `15777`.

### `BEACON_PORT`

Configure the beacon port. Defaults to `15000`.

### `PORT`

Configure the port. Defaults to `7777`.

### `AUTO_UPDATE`

Decide whether the server should search for server updates on start up or not. Defaults to `false`.
