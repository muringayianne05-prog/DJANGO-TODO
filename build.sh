#!/bin/bash
# Build script for Render
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Collect static files
python todoproject/manage.py collectstatic --no-input

# Run migrations
python todoproject/manage.py migrate
