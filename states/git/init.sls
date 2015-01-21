git:
    pkg:
        - installed

symlink-git-config:
    file.symlink:
        - name: {{ salt[ 'grains.get' ]( 'homedir' ) }}/.gitconfig
        - target: {{ salt[ 'grains.get' ]( 'stateroot' ) }}/git/.gitconfig
