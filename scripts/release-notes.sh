#!/usr/bin/env bash

set -e

DIR=`dirname "$BASH_SOURCE"`
pushd $DIR

# The following is fake and comes from CI
source .env

# call for instance as:
# ./build-cl.sh paritytech polkadot v0.9.10 v0.9.11
OWNER=paritytech
REPO=cumulus
REF1_CUMULUS=polkadot-v0.9.10
REF2_CUMULUS=polkadot-v0.9.11

REPO_DATA=cumulus.json
SUBSTRATE=substrate.json
POLKADOT=polkadot.json

echo Using REPO_DATA: $REPO_DATA
echo Building changelog for $OWNER/$REPO between $REF1_CUMULUS and $REF2_CUMULUS

export RUST_LOG=debug;

# This is acting as cache so we don't spend time querying while testing
if [ ! -f "$REPO_DATA" ]; then
    echo Generating $REPO_DATA
    changelogerator $OWNER/$REPO -f $REF1_CUMULUS -t $REF2_CUMULUS > $REPO_DATA
else
    echo Re-using $REPO_DATA
fi

if [ ! -f "$POLKADOT" ]; then
    echo Generating $POLKADOT
    changelogerator $OWNER/polkadot -f v0.9.10 -t v0.9.11 > $POLKADOT
else
    echo Re-using $POLKADOT
fi

if [ ! -f "$SUBSTRATE" ]; then
    echo Generating $SUBSTRATE
    changelogerator $OWNER/substrate -f polkadot-v0.9.10 -t polkadot-v0.9.11 > $SUBSTRATE
else
    echo Re-using $SUBSTRATE
fi

# Here we compose all the pieces together into one
# single big json file.
jq \
    --slurpfile srtool_kusama kusama-srtool-digest.json \
    --slurpfile srtool_polkadot polkadot-srtool-digest.json \
    --slurpfile cumulus cumulus.json \
    --slurpfile polkadot polkadot.json \
    --slurpfile substrate substrate.json \
    -n '{
        cumulus: $cumulus[0],
        polkadot: $polkadot[0],
        substrate: $substrate[0],
        srtool: [
            { name: "kusama", data: $srtool_kusama[0] },
            { name: "polkadot", data: $srtool_polkadot[0] }
        ] }' | tee context.json

tera --env --env-key env --include-path . --template cumulus.md context.json | tee release-notes-cumulus.md

popd
