#!/bin/bash

INSTALL_DIR=/home/steam/satisfactory

if [[ ! -f "$INSTALL_DIR/FactoryServer.sh" ]]; then
    if [[ "$EXPERIMENTAL" == "true" ]]; then
        echo "Downloading experimental version"
        EXPERIMENTAL_FLAG="-beta experimental"
    fi

    /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir $INSTALL_DIR +app_update 1690800 $EXPERIMENTAL_FLAG +quit
fi

$INSTALL_DIR/FactoryServer.sh
