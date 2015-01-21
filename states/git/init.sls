git:
    pkg:
        - installed

symlink-git-config:
    file.symlink:
        - name:     {{ grains.homedir }}/.gitconfig
        - target:   {{ grains.stateroot }}/git/.gitconfig
