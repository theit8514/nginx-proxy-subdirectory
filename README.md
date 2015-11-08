# nginx-proxy-subdirectory
A docker image based on jwilder/nginx-proxy which modifies the template to have a single host provide access to multiple containers.

## This image enviroment variables

* EXTERNAL_HTTPS_PORT: Specifies the port which is redirected to on HTTP->HTTPS redirection. Useful if behind NAT. Defaults to 443.

## Other container environment variables

* NGINX_PROXY_SUBDIRECTORY [REQUIRED]: Specifies the subdirectory to use for this container. If multiple containers have the same subdirectory, nginx will load balance those requests.
* NGINX_PROXY_SUBDIRECTORY_MAP_TO_ROOT: If 0, maps /$subdir to /$subdir. If 1, maps /$subdir to /. Defaults to 1.
* VIRTUAL_PROTO: Protocol to use for connection to backend container. Defaults to http.
