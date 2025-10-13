# Use the official Lavalink v4 image as the base
FROM ghcr.io/lavalink-devs/lavalink:4-alpine

# Set environment variables (optional)
ENV LAVALINK_SERVER_PASSWORD="yourpassword"

# Optional: copy a custom configuration file if you have one
# Make sure you have an application.yml in the same folder
COPY application.yml /opt/Lavalink/application.yml

# Expose the default Lavalink port
EXPOSE 2333

# The base image already defines the default command to run Lavalink,
# so you don’t need to set CMD unless you want to override it