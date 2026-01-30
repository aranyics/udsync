# ~/.config/sync/config.sh

set -euo pipefail

# ---- Hosts (must exist in ~/.ssh/config) ----
KOMONDOR="komondor"
AZURE="azure"
LOCAL="local"   # optional, useful for testing

# ---- Default rsync options ----
RSYNC_OPTS=(
  -a
  -v
  -P
  --human-readable
  --partial
  --links
)

# ---- Host specific options ----
HOST_komondor_opts=(
  --chown=nr_ppas:nr_pproc
)

HOST_AZURE_opts=()

HOST_LOCAL_opts=()

# ---- Safety defaults ----
DRY_RUN="${DRY_RUN:-1}"   # export DRY_RUN=1 if you want
