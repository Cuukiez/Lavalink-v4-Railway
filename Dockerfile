# Use an official OpenJDK runtime as a base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /opt/Lavalink

# Add the Lavalink jar (you need to download it to this folder or build)
# You can also use ARG to specify version
ARG LAVALINK_VERSION=4.0.8
ADD https://github.com/lavalink-devs/Lavalink/releases/download/${LAVALINK_VERSION}/Lavalink.jar Lavalink.jar

# Copy your application.yml (config file)
COPY application.yml /opt/Lavalink/application.yml

# Optional: copy plugins folder if you use plugins
#COPY plugins/ /opt/Lavalink/plugins/

# Expose default port
EXPOSE 443

# Use environment variable for Java options (heap size etc)
ENV _JAVA_OPTIONS="-Xmx512M"

# Run the jar
CMD ["java", "-jar", "Lavalink.jar"]
