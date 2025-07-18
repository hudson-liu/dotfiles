<h1 align="center">
  <img src="https://github.com/hudson-liu/dotfiles/blob/main/docs/main-showcase.png" width="60%">
  <br>
  Arch Dotfiles (w/ Chezmoi)
  <br>
  <img src="https://img.shields.io/github/commit-activity/y/hudson-liu/dotfiles?style=for-the-badge&labelColor=%23222436&color=%235771AA" alt="Commit Frequency">
  <img src="https://img.shields.io/github/license/hudson-liu/dotfiles?style=for-the-badge&labelColor=%23222436&color=%235771AA" alt="License">
</h1>

Dotfiles for a fairly minimal "Tokyo Night"-themed Arch Linux setup. This repo is only updated on a semi-regular basis, and it's entirely tailored to my personal workflow; everything _should_ work out-of-the-box, but I can't guarantee full reproducibility across all machines (though feel free to create a new [issue](https://github.com/hudson-liu/dotfiles/issues) if something is broken).

Also, fair warning: I strongly recommend only testing these dotfiles on a **fresh, blank install of Arch Linux**. These dotfiles _do not work_ unless you specifically use BSPWM, Pipewire/Pulseaudio, and a number of other applications—Chezmoi should auto-install these, but if you already have an existing DE/WM set up, then these dots likely won't work as intended.


## Installation
The following assumptions are made:
- Dotfiles are placed in ~/.config/
- Home directory is stored in $HOME variable
- [yay](https://github.com/Jguer/yay?tab=readme-ov-file#installation) is installed

> [!IMPORTANT]
> Check through _all files_ in this repo before running `chezmoi init` (or, at the minimum, any directory tagged with `exact_`). Certain directories **may be deleted without backup**, so be careful and don't run anything you don't understand... unless you’re okay with potentially breaking your system or deleting important files (ergo: [running this on a VM](https://wiki.archlinux.org/title/VirtualBox/Install_Arch_Linux_as_a_guest), which I highly recommend).

For a quick fresh install, I suggest using the archinstall script—the exported JSON configuration is at [./extras/archinstall.json](https://github.com/hudson-liu/dotfiles/blob/main/extras/archinstall.json), you can use it with:
```bash
curl -o tmp.json 'https://raw.githubusercontent.com/hudson-liu/dotfiles/main/extras/archinstall.json'
archinstall --config tmp.json
```
Once you've finished installing Arch, reboot and enter any empty TTY session; BSPWM is not usable upon install as SXHKD keybindings haven't been set. Then, to use the dots, login and clone the dotfiles repo:
```bash
sudo pacman -S chezmoi git
git clone https://github.com/hudson-liu/dotfiles.git ~/.local/share/chezmoi/
chezmoi init
chezmoi apply
```
(I don't recommend using `chezmoi init --apply hudson-liu`, as errors can potentially occur during cloning and initialization. Separate commands help with identifying which step went wrong.)

After the second command, Chezmoi will prompt various questions from `.chezmoi.toml.tmpl`. The setup is complete upon reboot. The generated `~/.config/chezmoi/chezmoi.toml` can be manually edited with any text editor. Updates to the package list in `.chezmoidata/packages.toml` will take effect upon re-running `chezmoi apply`

## Screenshots + Demo

| Empty Layout | Floating Layout | Tiled Layout |
|--------------|-----------------|--------------|
| ![Empty](./docs/empty-layout.png) | ![Floating](./docs/floating-layout.png) | ![Tiled](./docs/tiling-layout.png) |

<div align="center">
  <p><b>Initial Chezmoi Installation/Setup</b></p>
  <img src="https://github.com/hudson-liu/dotfiles/blob/main/docs/chezmoi-demo.gif" alt="initial chezmoi installation setup" width="75%">
</div>

<div align="center">
  <p><b>Python Virtual Environment Selector</b></p>
  <img src="https://github.com/hudson-liu/dotfiles/blob/main/docs/venv-selector-demo.gif" alt="selecting a virtual environment" width="75%">
</div>

## Inspiration
- [Manas140's Dotfiles](https://github.com/Manas140/dotfiles)
- [Amogh's Dotfiles](https://github.com/amogh-w/dotfiles)
- [Tudurom's Dotfiles](https://github.com/tudurom/dotfiles)
