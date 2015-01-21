# salty-dotfiles

> Auto provision my personal environments using a masterless
> [SaltStack](http://docs.saltstack.com/en/latest/) minion

The following OSs are supported (so far):

- Mac OS X

## Installation

1. Install [Homebrew](http://brew.sh/)

    ```sh
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

2. Update Python and install `pip`

    ```sh
    brew install python
    ```

3. Install [SaltStack](http://docs.saltstack.com/en/latest/) via `pip`

    ```sh
    sudo pip install salt
    ```

**Note:** Steps 2 and 3 can be reduced to `brew install saltstack` once
salt >= v2014.7.1 makes it into the
[brew index](http://braumeister.org/formula/saltstack)

## Apply State

1. Run the apply script as your user, with

    ```sh
    sudo ./apply-state.sh
    ```
