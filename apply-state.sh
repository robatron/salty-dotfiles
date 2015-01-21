#! /bin/bash
#
# Apply the local provision state using a masterless SaltState minion
#

set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

HOMEDIR=$HOME
USERNAME=$( echo "$HOME" | sed "s/.*\///g" )

echo "Running as '$USERNAME' with home directory '$HOMEDIR'..."

# Set the user, home-directory, and state root
salt-call                       \
    --config-dir "$DIR/config/" \
    --local                     \
    --log-level  debug          \
    grains.setval username $USERNAME

salt-call                       \
    --config-dir "$DIR/config/" \
    --local                     \
    --log-level  debug          \
    grains.setval homedir $HOMEDIR

salt-call                       \
    --config-dir "$DIR/config/" \
    --local                     \
    --log-level  debug          \
    grains.setval stateroot $DIR/states

# Apply the high state
salt-call                       \
    --config-dir "$DIR/config/" \
    --file-root  "$DIR/states/" \
    --local                     \
    --log-level  debug          \
    state.highstate
