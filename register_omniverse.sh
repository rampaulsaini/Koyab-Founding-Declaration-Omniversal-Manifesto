#!/bin/bash
set -e
echo "Registering Omniverse environment (example)."

# Replace placeholders with real values or export these before running:
OMNIVERSE_API_KEY="${OMNIVERSE_API_KEY:-<YOUR_OMNIVERSE_API_KEY>}"
OMNIVERSE_PROJECT="${OMNIVERSE_PROJECT:-koyab-omniverse}"

cat > .env <<EOF
OMNIVERSE_API_KEY=${OMNIVERSE_API_KEY}
OMNIVERSE_PROJECT=${OMNIVERSE_PROJECT}
EOF

echo ".env written with OMNIVERSE_PROJECT=${OMNIVERSE_PROJECT}"
