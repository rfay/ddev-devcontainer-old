#!/bin/bash
set -eu -o pipefail

DDEV_URL=https://nightly.link/drud/ddev/actions/artifacts/485751722.zip
echo "Installing DDEV"

sudo apt remove ddev >/dev/null 2>&1 || true

cd /tmp && curl -s -L -O ${DDEV_URL}
zipball=$(basename ${DDEV_URL})
unzip ${zipball}
chmod +x ddev && sudo mv ddev /usr/local/bin
rm -f ${zipball}
