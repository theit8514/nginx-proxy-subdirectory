#!/bin/bash

sed "s/\[EXTERNAL_HTTPS_PORT\]/$EXTERNAL_HTTPS_PORT/" /app/nginx.tmpl.base > /app/nginx.tmpl
