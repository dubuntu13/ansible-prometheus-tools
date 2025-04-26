#!/bin/bash

##put some variables with version, you should change if the newer version released
NODE_EXPORTER="https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz"
ELASTIC_EXPORTER="https://github.com/prometheus-community/elasticsearch_exporter/releases/download/v1.9.0/elasticsearch_exporter-1.9.0.linux-amd64.tar.gz"

node=(
	"$NODE_EXPORTER"
)

for url in "${node[@]}"; do
	wget -P ./roles/promtools/files/node_exporter/ -O ./roles/promtools/files/node_exporter/node-exporter.tar.gz "$node"
done

elk=(
	"$ELASTIC_EXPORTER"
)

for url in "${elk[@]}"; do
	wget -P ./roles/promtools/files/elastic_exporter/ -O ./roles/promtools/files/elastic_exporter/elastic-exporter.tar.gz "$elk"
done
