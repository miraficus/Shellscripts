#!/bin/bash
message="$@"
## format to parse to curl
## echo Sending message: $message
msg_content=\"$message\"

## discord webhook
url='https://replace-your-full-discord-webhoook-url-here'
curl -H "Content-Type: application/json" -X POST -d "{\"content\": $msg_content}" $url
