#!/bin/bash
set -e
echo "Installing keys (example)."
sudo mkdir -p /opt/omniverse/keys || true

if [ -f ./keys/omniverse_key.pem ]; then
  sudo mv ./keys/omniverse_key.pem /opt/omniverse/keys/
  sudo chmod 600 /opt/omniverse/keys/omniverse_key.pem
  echo "Key moved to /opt/omniverse/keys/"
else
  echo "No keys found in ./keys/ — skip."
fi
