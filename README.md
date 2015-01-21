# salty-dotfiles

> Auto provision my local environments using a masterless [SaltStack](http://docs.saltstack.com/en/latest/)

## Supported Environments

- Mac OS X

## Installation

### Mac OS X

1. Install [Homebrew](http://brew.sh/)

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Update Python and install `pip`

    brew install python

3. Install [SaltStack](http://docs.saltstack.com/en/latest/) via pip

    sudo pip install salt

**Note:** Steps 2 and 3 can be reduced to `brew install saltstack` once
salt >= v2014.7.1 makes it into the
[brew index](http://braumeister.org/formula/saltstack)

## Apply State

### Mac OS X

1. Run the apply script

    ./apply-state.sh
