vim:                 # ID declaration
  pkg:               # state declaration
    - installed      # function declaration

symlink-vim-config:
    file.symlink:
        - name: {{ salt[ 'grains.get' ]( 'homedir' ) }}/.vimrc
        - target: {{ salt[ 'grains.get' ]( 'stateroot' ) }}/vim/.vimrc
