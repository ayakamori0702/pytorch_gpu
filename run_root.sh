#!/bin/sh

TODAY=$(date "+%Y%m%d_%H%M%S")
LOG="tee log/log_exec_${TODAY}.txt"

docker \
  run \
  --rm \
  -e TZ=Asia/Tokyo \
  -it \
  -u $(id -u):$(id -g) \
  -v $(pwd):/mnt \
  --workdir=/mnt \
  --gpus=all \
  amori/pytorch_gpu:v0.0 \
  $@ | ${LOG}
