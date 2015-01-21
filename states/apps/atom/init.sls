set-atom-config:
    file.symlink:
        - name: {{ salt[ 'grains.get' ]( 'homedir' ) }}/.atom/config.cson
        - target: {{ salt[ 'grains.get' ]( 'stateroot' ) }}/apps/atom/.atom/config.cson
