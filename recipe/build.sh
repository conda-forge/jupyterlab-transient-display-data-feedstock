#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

# Packs and installs the extension, nodejs extension rebuild is done automatically
# on jupyterlab startup, when the new extension is detected or was removed.
"${PREFIX}/bin/jupyter" labextension install transient-display-data --no-build

# Shared file not to be included.
# [ -f "${PREFIX}/share/jupyter/lab/settings/build_config.json" ] && rm "${PREFIX}/share/jupyter/lab/settings/build_config.json"
