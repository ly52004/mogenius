#!/bin/sh
if [ ! -f UUID ]; then
  UUID="71863d25-8556-aa5e-01cb-011f5cdf9313"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

