#!/bin/bash
# Find the Python executable dynamically
python_executable=$(which python)

if [ -z "$python_executable" ]; then
    echo "Error: Could not find Python executable."
    exit 1
fi

"$python_executable" -m playwright install --with-deps