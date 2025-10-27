#!/bin/sh
set -euo pipefail

echo "Starting Lavalink with OAuth token setup..."

# Create directory for token
mkdir -p /opt/lavalink

# Write the token JSON from the environment variable
echo "$LAVALINK_YT_TOKEN" > /opt/lavalink/config.json

# Set permissions
chmod 600 /opt/lavalink/config.json

# Confirm token file exists
if [ ! -s /opt/lavalink/token.json ]; then
  echo "❌ Failed to write config.json"
  exit 1
fi

# Start Lavalink
echo "✅ Config written, starting Lavalink..."
java -jar Lavalink.jar
