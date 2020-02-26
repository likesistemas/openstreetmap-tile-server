FROM overv/openstreetmap-tile-server:latest AS builder
ARG DOWNLOAD_PBF=http://download.geofabrik.de/south-america/brazil/sul-latest.osm.pbf
ARG DOWNLOAD_POLY=http://download.geofabrik.de/south-america/brazil/sul.poly
RUN /run.sh import

FROM overv/openstreetmap-tile-server:latest
ENV THREADS=4
ENV "OSM2PGSQL_EXTRA_ARGS=-C 512"
COPY --from=builder /var/lib/postgresql/12/main /var/lib/postgresql/12/main
VOLUME /var/lib/mod_tile