symlink-bash-config:
    file.symlink:
        - name:     {{ grains.homedir }}/.bashrc
        - target:   {{ grains.stateroot }}/bash/.bashrc

symlink-bash-aliases:
    file.symlink:
        - name:     {{ grains.homedir }}/.bash_aliases
        - target:   {{ grains.stateroot }}/bash/.bash_aliases

install-git-aware-prompt:
    git.latest:
        - name:     https://github.com/jimeh/git-aware-prompt.git
        - rev:      518685d5d42ab9f298207dd66bbc213775c5cbee
        - target:   {{ grains.homedir }}/.bash/git-aware-prompt/
        - depth:    1
        - require:
            - pkg: git