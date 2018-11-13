#!/usr/bin/env bash

set -e

FWDIR="$(cd "`dirname $0`"; pwd)"
cd "$FWDIR"

<<<<<<< HEAD
pycodestyle --max-line-length=100 tests
pylint --msg-template="{path} ({line},{column}): [{msg_id} {symbol}] {msg}" --rcfile="$FWDIR/pylintrc" -- apps tests
=======
prospector --profile "$FWDIR/prospector.yaml" -i "example"
>>>>>>> upstream/add-contributor-guide

rstcheck README.rst
