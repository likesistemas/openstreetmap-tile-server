#!/bin/bash

docker volume create openstreetmap-rendered-tiles

docker run \
    -p 8080:80 \
    -v openstreetmap-data:/var/lib/postgresql/12/main \
    -v openstreetmap-rendered-tiles:/var/lib/mod_tile \
    -d overv/openstreetmap-tile-server \
    run