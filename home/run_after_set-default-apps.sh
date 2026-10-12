#!/usr/bin/env bash
set -euo pipefail

# =====[Set Default Applications]=====
xdg-mime default google-chrome.desktop text/html x-scheme-handler/http x-scheme-handler/https
xdg-mime default org.pwmt.zathura.desktop application/pdf
xdg-mime default nvim.desktop text/plain
