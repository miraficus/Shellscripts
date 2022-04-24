#!/bin/sh
curl --silent http://127.0.0.1:4040/api/tunnels | jq '.tunnels[] | .name, .public_url' | sed -e 's/\"//g' | cat > ip.txt
sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' ip.txt | cat > message.txt
message="$(cat message.txt)"
msg_content=\"$message\"
url='https://replace-your-full-discord-webhoook-url-here'
curl -H "Content-Type: application/json" -X POST -d "{\"content\": $msg_content}" $url



