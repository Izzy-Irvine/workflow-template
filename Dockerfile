FROM caddy

COPY <<EOF /etc/caddy/Caddyfile
:8080 {
    root * /www
    file_server
}
EOF

COPY site /www