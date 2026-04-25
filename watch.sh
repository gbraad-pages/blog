#!/bin/bash
# Watch and rebuild script for Gerard Braad's blog
# Uses inotifywait for instant rebuilds on file changes

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Check if inotifywait is available
if ! command -v inotifywait &> /dev/null; then
    echo "Error: inotifywait is not installed."
    echo "Install with: sudo apt-get install inotify-tools"
    echo ""
    echo "Falling back to preview.sh with auto-reload..."
    exec ./preview.sh "$@"
fi

echo "========================================="
echo "Watch mode enabled"
echo "========================================="
echo "Watching for changes in:"
echo "  - content/"
echo "  - themes/"
echo "  - pelicanconf.py"
echo ""
echo "Press Ctrl+C to stop"
echo "========================================="
echo ""

# Initial build
./build.sh

# Watch for changes
while inotifywait -r -e modify,create,delete \
    content/ themes/ pelicanconf.py 2>/dev/null; do
    echo ""
    echo "Changes detected, rebuilding..."
    ./build.sh
    echo "Waiting for changes..."
    echo ""
done
