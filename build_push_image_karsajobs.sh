#!/bin/bash

#1 Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama ghcr.io/ariogiswahyudi/karsajobs:latest
docker build -t ghcr.io/ariogiswahyudi/karsajobs:latest .

#2 Perintah untuk login ke Github Packages
echo $PAT | docker login ghcr.io --username ariogiswahyudi --password-stdin

#3 Perintah untuk push image ke Github Packages
docker push ghcr.io/ariogiswahyudi/karsajobs:latest