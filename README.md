# salty-dotfiles

> Auto provision my personal environments using a masterless
> [SaltStack](http://docs.saltstack.com/en/latest/) minion

The following OSs are supported (so far):

- Mac OS X

## Installation

```sh
curl https://raw.githubusercontent.com/robatron/salty-dotfiles/master/install.sh | bash
```

### Manual

The installation script above performs the following tasks:

1. Install [Homebrew](http://brew.sh/):

    ```sh
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

2. Install Salt:

    ```sh
    brew install saltstack
    ```

## Apply State

1. Run the apply script as your user, with

    ```sh
    sudo ./apply-state.sh
    ```
