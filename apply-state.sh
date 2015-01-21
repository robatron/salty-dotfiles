#! /bin/bash

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [[ -z $1 ]]; then
    echo 'Error: A username is required, e.g., `./apply-state.sh /home/username`'
    exit 1
fi

salt-call                       \
    --config-dir "$DIR/config/" \
    --local                     \
    --log-level  debug          \
    grains.setval homedir $1

salt-call                       \
    --config-dir "$DIR/config/" \
    --local                     \
    --log-level  debug          \
    grains.setval stateroot $DIR/states

salt-call                       \
    --config-dir "$DIR/config/" \
    --file-root  "$DIR/states/" \
    --local                     \
    --log-level  debug          \
    state.highstate
