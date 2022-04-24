#!/bin/sh
curl --silent http://127.0.0.1:4040/api/tunnels | jq '.tunnels[] | .name, .public_url' | cat > ip.txt