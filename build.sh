#!/bin/bash
# Build script for Gerard Braad's blog

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

echo "========================================="
echo "Building Gerard Braad's Blog"
echo "========================================="

# Check if pelican is installed
if ! command -v pelican &> /dev/null; then
    echo "Error: Pelican is not installed."
    echo "Install with: pip install pelican markdown"
    exit 1
fi

# Clean output directory
echo "Cleaning output directory..."
rm -rf output/*

# Generate the site
echo "Generating site..."
pelican content -s pelicanconf.py

# Copy shared theme CSS to output
echo "Copying shared theme..."
mkdir -p output/theme
cp ../shared-theme.css output/theme/

echo ""
echo "========================================="
echo "Build complete!"
echo "========================================="
echo "Output directory: $SCRIPT_DIR/output"
echo ""
echo "To preview locally, run:"
echo "  ./preview.sh"
echo ""
echo "To publish, run:"
echo "  pelican content -s publishconf.py"
echo "========================================="
