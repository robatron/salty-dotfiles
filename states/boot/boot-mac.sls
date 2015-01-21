# Enable Darwin boot messages
# http://www.tech-recipes.com/rx/723/mac-os-x-monitor-messages-during-boot/

show-boot-messages:
    cmd.run:
        - name: nvram boot-args="-v"
