#!/bin/bash

set -veuo pipefail
# Install the files in the TEXMFHOME by symlink.

TEXMFHOME=$(kpsewhich -var-value TEXMFHOME)
DEST_DIR="$TEXMFHOME/tex/latex/commonstuff"
DEST_CLASS="$DEST_DIR/sticky_minutes.cls"
DEST_TYPOGRAPHY="$DEST_DIR/sticky_typography.cls"

# Create directory if not exists
mkdir -p $DEST_DIR

# Create symlink, forcibly overwrite (with backup) if necessary.
ln --backup=numbered --symbolic -T ${PWD}/sticky_minutes.cls $DEST_CLASS
ln --backup=numbered --symbolic -T ${PWD}/sticky_typography.cls $DEST_TYPOGRAPHY
