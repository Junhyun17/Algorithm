#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
python3 /home/user/project/main.py --config config.yaml "$@"
