#!/bin/sh

PROXY_CONF='/etc/tinyproxy/tinyproxy.conf'

echo "STARTING TINYPROXY"

exec tinyproxy -d

