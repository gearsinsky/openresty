#!/bin/bash

# 設定變數
DOCKER_IMAGE="openresty/openresty:1.27.1.1-1-alpine-fat"  # 可以選擇你的 OpenResty 版本

# 憑證和密鑰路徑
#CERT_PATH="./ssl/fullchain.pem"
#KEY_PATH="./ssl/private.pem"


# 啟動 Docker 容器
docker run -d \
  --name openresty \
  -p 80:80 \
  -p 443:443 \
  -v ./conf.d:/etc/nginx/conf.d \
  -v ./ssl:/etc/nginx/certs \
  --net monitoring_default \
  --restart always \
  $DOCKER_IMAGE


