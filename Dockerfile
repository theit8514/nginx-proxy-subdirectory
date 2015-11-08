FROM jwilder/nginx-proxy:0.2.0
MAINTAINER theit8514

COPY install.sh /
COPY set_port.sh /app/
RUN chmod +x /install.sh /app/set_port.sh && \
    /bin/bash /install.sh && \
    rm -f /install.sh
COPY nginx.tmpl /app/nginx.tmpl.base
