#!/bin/bash
# .____                               .__                             ___.
# |    |   _____   __ __  ____   ____ |  |__   __  _  _______  ___.__.\_ |__ _____ _______
# |    |   \__  \ |  |  \/    \_/ ___\|  |  \  \ \/ \/ /\__  \<   |  | | __ \\__  \\_  __ \
# |    |___ / __ \|  |  /   |  \  \___|   Y  \  \     /  / __ \\___  | | \_\ \/ __ \|  | \/
# |_______ (____  /____/|___|  /\___  >___|  /   \/\_/  (____  / ____| |___  (____  /__|
#         \/    \/           \/     \/     \/                \/\/          \/     \/

# Kill all current instances
killall waybar

# Load de current configuration

waybar -c ~/.config/waybar/config &
-s ~/.config/waybar/style.css
-s
