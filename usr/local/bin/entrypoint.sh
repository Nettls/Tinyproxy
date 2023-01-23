#!/bin/sh

CONFIG_PATH='/etc/tinyproxy/tinyproxy.conf'

if [[ ! -z "$TINYPROXY_CONF" ]]
then
    echo -n "TINYPROXY_CONF environment variable provided, provisioning configuration..."
    cat > "$CONFIG_PATH" <<EOF
$TINYPROXY_CONF
EOF
    echo " done"
else
    echo "TINYPROXY_CONF environment variable is not provided, using existing configuration at $CONFIG_PATH ."
fi

tinyproxy -d -c "$CONFIG_PATH"
