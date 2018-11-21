#!/bin/bash

#docker-compose pause

docker run \
    --rm \
    -v elkdocker_es_vol:/usr/share/elasticsearch/data \
    -v $(pwd)/backup:/backup \
    ubuntu \
        bash -c "cd /usr/share/elasticsearch/data && \
         rm -rf * && \
         tar xvf /backup/elk_docker_es_vol.tar"

#docker-compose restart
