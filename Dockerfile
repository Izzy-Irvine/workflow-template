FROM caddy

COPY <<EOF /etc/caddy/Caddyfile
:80 {
    root * /www
    file_server
}
EOF

COPY site /www