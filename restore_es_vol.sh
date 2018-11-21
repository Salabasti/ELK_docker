#!/bin/bash

docker-compose pause

docker run \
    --rm \
    --volumes-from elasticsearch \
    -v $(pwd)/backup:/backup \
    ubuntu \
        bash -c "cd /usr/share/elasticsearch/data && \
         rm -rf * && \
         tar xvf /backup/elk_docker_es_vol.tar"

docker-compose restart
