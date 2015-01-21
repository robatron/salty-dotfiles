symlink-atom-config:
    file.symlink:
        - name:     {{ grains.homedir }}/.atom/config.cson
        - target:   {{ grains.stateroot }}/atom/.atom/config.cson
