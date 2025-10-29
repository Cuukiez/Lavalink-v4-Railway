#!/bin/sh
set -e

echo "Starting Lavalink with OAuth..."

# If OAuth token is set in Render environment, save it to file
if [ -n "$LAVALINK_YT_TOKEN" ]; then
  echo "$LAVALINK_YT_TOKEN" > /opt/Lavalink/oauth.json
  echo "✅ OAuth token saved to oauth.json"
else
  echo "⚠️ No LAVALINK_YT_TOKEN provided!"
fi

# Start Lavalink
java -jar Lavalink.jar
