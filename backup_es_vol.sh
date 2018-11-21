docker run \
    --rm \
    --volumes-from elasticsearch \
    -v $(pwd)/backup:/backup \
    ubuntu tar cvf /backup/elk_docker_es_vol.tar /usr/share/elasticsearch/data
