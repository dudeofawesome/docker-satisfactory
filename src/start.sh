#!/bin/bash

INSTALL_DIR=/home/steam/satisfactory

if [ ! -f "$INSTALL_DIR/FactoryServer.sh" ]; then
    /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir $INSTALL_DIR +app_update 1690800 +quit
fi

$INSTALL_DIR/FactoryServer.sh
