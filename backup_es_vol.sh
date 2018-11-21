docker run \
    --rm \
    --volumes_from elasticsearch \
    -v $(pwd)/backup:/backup \
    ubuntu \
        bash -c "cd /usr/share/elasticsearch/data && \
        tar cvf /backup/elk_docker_es_vol.tar ."
