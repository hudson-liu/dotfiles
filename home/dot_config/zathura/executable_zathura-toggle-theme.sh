#!/bin/bash

switch_to_tokyo_night() {
  cp $HOME/.config/zathura/zathurarc-tokyo-night $HOME/.config/zathura/zathurarc
}

switch_to_nord() {
  cp $HOME/.config/zathura/zathurarc-nord $HOME/.config/zathura/zathurarc
}

if [[ $(grep -ic '# dark mode true' $HOME/.config/zathura/zathurarc) -eq 1 ]]; then
  switch_to_nord
else
  switch_to_tokyo_night
fi

