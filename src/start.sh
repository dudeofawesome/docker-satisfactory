#!/bin/bash

INSTALL_DIR=/home/steam/satisfactory
APP_ID=1690800

if [[ ! -f "$INSTALL_DIR/FactoryServer.sh" ]] || [[ "$AUTO_UPDATE" == "true" ]]; then
    if [[ "$EXPERIMENTAL" == "true" ]]; then
        echo "Downloading experimental version"
        EXPERIMENTAL_FLAG="-beta experimental"
    fi

    /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir $INSTALL_DIR +app_update $APP_ID $EXPERIMENTAL_FLAG +quit
fi

$INSTALL_DIR/FactoryServer.sh -ServerQueryPort=$SERVER_QUERY_PORT -BeaconPort=$BEACON_PORT -Port=$PORT
