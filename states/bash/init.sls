symlink-bash-config:
    file.symlink:
        - name:     {{ grains.homedir }}/.bash_profile
        - target:   {{ grains.stateroot }}/bash/.bash_profile
        - user:     {{ grains.username }}

symlink-bash-aliases:
    file.symlink:
        - name:     {{ grains.homedir }}/.bash_aliases
        - target:   {{ grains.stateroot }}/bash/.bash_aliases
        - user:     {{ grains.username }}

install-git-aware-prompt:
    git.latest:
        - name:     https://github.com/jimeh/git-aware-prompt.git
        - force:    true
        - target:   {{ grains.homedir }}/.bash/git-aware-prompt/
        - depth:    1
        - user:     {{ grains.username }}
