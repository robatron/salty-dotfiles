#! /bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

salt-call                       \
    --config-dir "$DIR/config/" \
    --file-root  "$DIR/states/" \
    --local                     \
    --log-level  debug          \
    state.highstate
