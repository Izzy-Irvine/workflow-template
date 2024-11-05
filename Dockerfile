FROM caddy

COPY <<EOF /etc/caddy/Caddyfile
{
  http_port 8080
  https_port 8443
}

:8080 {
    root * /www
    file_server
}
EOF

COPY site /www
