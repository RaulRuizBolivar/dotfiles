#!/bin/bash
#  __________       __                                  __________                    .___
#  \______   \____ |  | __ ____   _____   ____   ____   \______   \_____    ____    __| _/____   _____
#   |     ___/  _ \|  |/ // __ \ /     \ /  _ \ /    \   |       _/\__  \  /    \  / __ |/  _ \ /     \
#   |    |  (  <_> )    <\  ___/|  Y Y  (  <_> )   |  \  |    |   \ / __ \|   |  \/ /_/ (  <_> )  Y Y  \
#   |____|   \____/|__|_ \\___  >__|_|  /\____/|___|  /  |____|_  /(____  /___|  /\____ |\____/|__|_|  /
#                       \/    \/      \/            \/          \/      \/     \/      \/            \/

# Check if a random number is greater than 20000 and shows a shiny pokemon if it is greater

if [[ $RANDOM > 20000 ]]; then
  pokemon-colorscripts -r --no-title
else
  pokemon-colorscripts -r --shiny --no-title
fi
