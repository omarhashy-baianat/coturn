# Use official coturn image
FROM instrumentisto/coturn

# Copy your TURN server configuration into the container
COPY turnserver.conf /etc/coturn/turnserver.conf

# Run coturn with your config
CMD ["turnserver", "-c", "/etc/coturn/turnserver.conf", "--no-cli"]
