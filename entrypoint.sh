#!/bin/bash
if [[ $VULTA_DEBUG == "true" ]]; then
  supervisord -c supervisord-development.conf
else
  supervisord -c supervisord.conf
fi