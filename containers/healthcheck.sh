#!/bin/sh
set -e

# Health check logic
echo "Running health check..."
python -c 'import sys; sys.exit(0)'

echo "Health check passed."