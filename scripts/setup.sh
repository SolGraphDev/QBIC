#!/bin/bash

# Create .cursor directory if it doesn't exist
mkdir -p .cursor

bun install

# Create mcp.json with the current directory path
echo "{
  \"QbicMcpServers\": {
    \"Qbic-TFC\": {
      \"command\": \"bunx\",
      \"args\": [
        \"qbic-mcp@latest\"
      ]
    }
  }
}" > .cursor/mcp.json 