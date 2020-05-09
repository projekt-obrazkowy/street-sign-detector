#!/usr/bin/env bash

export PYTHONPATH="$PYTHONPATH:$PWD/imports/slim:$PWD/imports/object_detection"

python3 imports/object_detection/model_main.py \
    --model_dir=models/train \
    --pipeline_config_path=configs/ssd_inception_v2_coco.config
