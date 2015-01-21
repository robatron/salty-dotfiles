vim:                 # ID declaration
  pkg:               # state declaration
    - installed      # function declaration

symlink-vim-config:
    file.symlink:
        - name:     {{ grains.homedir }}/.vimrc
        - target:   {{ grains.stateroot }}/vim/.vimrc
        - user:     {{ grains.username }}
