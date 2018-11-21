docker run \
    --rm \
    -v elk_docker_es_vol:/usr/share/elasticsearch/data \
    -v $(pwd)/backup:/backup \
    ubuntu tar cvf /backup/elk_docker_es_vol.tar /usr/share/elasticsearch/data
