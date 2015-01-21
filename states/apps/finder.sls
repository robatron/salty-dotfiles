# Show hidden files
# http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/

show-hidden-files:
    cmd.run:
        - name: defaults write com.apple.finder AppleShowAllFiles YES

restart-finder:
    cmd.run:
        - name: killall Finder
        - require:
            - cmd: show-hidden-files
