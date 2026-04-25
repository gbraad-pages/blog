#!/bin/bash
# Preview script for Gerard Braad's blog

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

PORT="${1:-8000}"

echo "========================================="
echo "Starting live preview server"
echo "========================================="
echo ""
echo "Server will start at: http://localhost:$PORT"
echo "Press Ctrl+C to stop"
echo ""
echo "Auto-regeneration: ENABLED"
echo "The site will rebuild automatically when you edit files."
echo ""
echo "========================================="

# Build first
./build.sh

# Start the development server with auto-reload
pelican --autoreload --listen --port $PORT
