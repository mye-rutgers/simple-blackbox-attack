#!/bin/bash
cd /app
wget http://www.image-net.org/image/tiny/tiny-imagenet-200.zip
unzip tiny-imagenet-200.zip
git clone https://github.com/mye-rutgers/simple-blackbox-attack.git
cd simple-blackbox-attack
python3 run_simba.py --data_root /app/tiny-imagenet-200 --num_iters 10000 --pixel_attack  --freq_dims 224
