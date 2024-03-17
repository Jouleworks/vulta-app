#!/bin/bash
echo "Running..."
nginx -c ~/git/vultaapp/nginx/nginx.conf -g 'daemon off;'