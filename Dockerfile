FROM vaultwarden/server:1.32.7

HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD wget -q --spider http://localhost:80/alive || exit 1

EXPOSE 80
