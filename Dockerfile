FROM overv/openstreetmap-tile-server:latest
ENV LAST_BUILD=2020-02-26

ARG DOWNLOAD_PBF=http://download.geofabrik.de/south-america/brazil/sul-latest.osm.pbf
ARG DOWNLOAD_POLY=http://download.geofabrik.de/south-america/brazil/sul.poly
RUN /run.sh import

ENV THREADS=4
ENV OSM2PGSQL_EXTRA_ARGS="-C 512"
VOLUME /var/lib/mod_tile