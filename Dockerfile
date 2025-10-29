# Use official OpenJDK runtime
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /opt/Lavalink

# Lavalink version
ARG LAVALINK_VERSION=4.0.8

# Download Lavalink
ADD https://github.com/lavalink-devs/Lavalink/releases/download/${LAVALINK_VERSION}/Lavalink.jar Lavalink.jar

# Copy config and start script
COPY application.yml .
COPY start.sh .
COPY plugins/ ./plugins/

# Expose Lavalink port (Render maps this automatically)
EXPOSE 443

# Make script executable
RUN chmod +x /opt/Lavalink/start.sh

# Run Lavalink via start.sh
CMD ["sh", "/opt/Lavalink/start.sh"]
