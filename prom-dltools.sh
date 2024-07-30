#!/bin/bash

##put some variables with version, you should change if the newer version released
NODE_EXPORTER="https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.darwin-amd64.tar.gz"

urls=(
	"$NODE_EXPORTER"
)

for url in "${urls[@]}"; do
	wget -P ./roles/promtools/files/node_exporter/ "$url"
done
