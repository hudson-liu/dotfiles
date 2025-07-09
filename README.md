<h1 align="center">
  <img src="https://github.com/hudson-liu/dotfiles/blob/main/docs/main-showcase.png" width="60%">
  <br>
  Arch Dotfiles (w/ Chezmoi)
  <br>
  <img src="https://img.shields.io/github/commit-activity/y/hudson-liu/dotfiles?style=for-the-badge&labelColor=%23222436&color=%235771AA" alt="Commit Frequency">
  <img src="https://img.shields.io/github/license/hudson-liu/dotfiles?style=for-the-badge&labelColor=%23222436&color=%235771AA" alt="License">
</h1>

Dotfiles for a fairly minimal "Tokyo Night"-themed Arch Linux setup. This repo is only updated on a semi-regular basis, and it's entirely tailored to my personal workflow; everything _should_ work OOTB, but I can't guarantee full reproducibility across all machines (though feel free to create a new [issue](https://github.com/hudson-liu/dotfiles/issues) if something is broken).

Also, fair warning: I strongly recommend only testing these dotfiles on a **fresh, blank install of Arch Linux**. These dotfiles _do not work_ unless you specifically use BSPWM, Pipewire/Pulseaudio, and a number of other applications—Chezmoi should auto-install these, but if you already have an existing DE/WM set up, then these dots likely won't work as intended. For a quick fresh install, I recommend using the provided script in [./extras/install-script.sh](https://github.com/hudson-liu/dotfiles/extras/install-script.sh).

## Installation
The following assumptions are made:
- Dotfiles are placed in ~/.config/
- Home directory is stored in $HOME variable

> [!IMPORTANT]
> Go through _all files_ in this repo before running `chezmoi init`. Certain directories are tagged with the "exact_" state attribute, so **existing configurations may be deleted without backup**.

On a
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

Then, clone the dotfiles repo:

```bash
sudo pacman -S chezmoi
chezmoi init --apply hudson-liu
```

After running the second command, Chezmoi will prompt various questions from `.chezmoi.toml.tmpl`.
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
