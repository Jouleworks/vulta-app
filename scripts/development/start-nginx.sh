#!/bin/bash
echo "Running..."
nginx -c ~/git/vultaapp/nginx/nginx-development.conf -g 'daemon off;'