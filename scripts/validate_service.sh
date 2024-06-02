#!/bin/bash
echo "Validating service"
curl -f http://localhost:8800 || exit 1
