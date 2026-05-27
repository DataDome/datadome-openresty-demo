FROM openresty/openresty:jammy

RUN luarocks install datadome-openresty

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
