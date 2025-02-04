#!/bin/bash

# function for connection check
function connected {
  $SUDO ping -c 1 github.com &>/dev/null
}

# Check for internet connectivity to GitHub
function check_connection {
  if ! connected; then
    echo "${BOLD} This won't work, you are offline !${RESET}"
    exit 0
  fi
}
