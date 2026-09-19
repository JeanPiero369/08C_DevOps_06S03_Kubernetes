#!/usr/bin/env bash

URL="${1:-http://localhost:30080/}"

echo "Generando carga sobre $URL"
echo "Presiona Ctrl+C para detener."

while true; do
    for i in {1..20}; do
        curl -s --max-time 3 "$URL" > /dev/null &
    done
    wait
done