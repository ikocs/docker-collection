#!/bin/bash

# Применяем переменные окружения из файла
if [ -f "/home/petalinux/sdk/environment-setup-cortexa9t2hf-neon-xilinx-linux-gnueabi" ]; then
    source "/home/petalinux/sdk/environment-setup-cortexa9t2hf-neon-xilinx-linux-gnueabi"
else
    echo "Warning: Environment file not found at /home/petalinux/sdk/environment-setup-cortexa9t2hf-neon-xilinx-linux-gnueabi" >&2
fi

# Передаем управление командам из IDE
exec "$@"