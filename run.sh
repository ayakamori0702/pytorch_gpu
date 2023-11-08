#!/bin/sh

TODAY=$(date "+%Y%m%d_%H%M%S")
LOG="tee docker/log/log_exec_${TODAY}.txt"

docker \
  run \
  --rm \
  -e TZ=Asia/Tokyo \
  -it \
  -v $(pwd):/mnt \
  --workdir=/mnt \
  --gpus=all \
  amori/pytorch_gpu:v0.0.0 \
  $@ | ${LOG}
