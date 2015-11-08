sed 's|exec "$@"|/app/set_port.sh\n$@|' docker-entrypoint.sh -i
