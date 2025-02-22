<h1 align="center">
  <img src="https://github.com/Hudson-Liu/Dotfiles-Desktop/blob/main/_Rice-Pics/Configuration-Setup.png" width="60%">
  <br>
  Minimal Nord-Themed Dotfiles for Arch
  <br>
  <img src="https://img.shields.io/github/commit-activity/y/Hudson-Liu/Dotfiles?style=for-the-badge&labelColor=%234c566a&color=%235e81ac" alt="Commit Frequency">
  <img src="https://img.shields.io/github/license/Hudson-Liu/Dotfiles?style=for-the-badge&labelColor=%234c566a&color=%235e81ac" alt="License">
</h1>

Dotfiles for a fairly minimal Nord-themed Arch Linux setup. This repo is only updated on a semi-regular basis; don't expect for everything to work OOTB. I didn't include all configs since I kept most applications somewhat close to default—my rule of thumb is to only add files that would take >1 hr (or annoying trial-and-error) to replicate from scratch.
## Application List
**Base Software**
- *OS*: `Arch Linux`
    - *AUR Helper*: `Yay`
    - *Networking*: `NetworkManager`
    - *Sound Daemon*: `PipeWire`
- *Display Server*: `X11`/`Xorg`
    - *Display Manager*: `LightDM` - GTK Greeter
- *Window Manager*: `BSPWM` + `SXHKD` (and `FlashFocus`)
    - *Application Launcher*: `Rofi` (as dmenu)
    - *Compositor*: `Picom`
    - *Status Bar*: `Polybar`
    - *Terminal*: `Kitty`

**Other Applications**
- *Fetch Utility*: `Catnap`
- *Sound Front-End*: `Pavucontrol`
- *Disk Management*: `GParted`
- *Image Viewer*: `Feh`
- *IDE/Notes*: `Neovim` (`NvChad`)
- *TeX Distro*: `TeX Live` (`pdfTeX` + `LaTeX`)
- *PDF Viewer*: `Zathura` w/ `MuPDF`
- *File Explorer*: `Thunar` + `Thunar-Archive-Plugin` + `Thunar-Volman`
- *Archive Management*: `XArchiver` + `unzip`/`7z`
- *Video Player*: `mpv`
- *Process Monitor*: `htop` (for cpu) + `nvtop` (for gpu)
- *Bluetooth*: `Blueberry`
- *GTK Theming*: `Lxappearance`
- *Keyboard Backlight*: `OpenRGB`
- *Screenshot Utility*: `Scrot`
- *Clipboard CLI Control*: `Xclip`
- *Source Control*: `Git` & `Lazygit`
- *Music Player*: `Spotify` w/ `Spicetify` (`Sleek` Theme)

## Theming
  - GTK Theme: Nordic
  - Cursor: BreezeX
  - Font: FiraCode Nerd Font
  - Unicode & Emojis: Noto Color Emoji
## Screenshots

| Empty Layout | Floating Layout | Tiled Layout |
|--------------|-----------------|--------------|
| ![Empty](./_Rice-Pics/Empty-Screen.png) | ![Floating](./_Rice-Pics/Floating-Window-Demo.png) | ![Tiled](./_Rice-Pics/Notetaking.png) |

**Showcase Picture:**
![Picture of rice for showcases.](https://github.com/Hudson-Liu/Dotfiles/blob/main/_Rice-Pics/Collection.png)

## Installation
> [!NOTE]
> The following steps may override existing configuration files. Be careful when running each line, and make sure it will work for your specific system.
### 1. Download Files
Clone to `Downloads` folder (this can be any folder).
```bash
git clone https://github.com/Hudson-Liu/Dotfiles.git ~/Downloads/Dotfiles
```
Move configs to `~/.config/`.
```bash
mv -f ~/Downloads/Dotfiles/* ~/.config/
```
Remove cloned repo.
```bash
rm -rf ~/Downloads/Dotfiles
```
### 2. Move Wallpaper
For `bspwmrc` to correctly find the wallpaper, the image needs to be placed in the correct directory:
```bash
mkdir -p ~/Pictures/Wallpapers/
cp ~/.config/_Extras/Nord-Mountains.png ~/Pictures/Wallpapers/
```
### 3. Install GTK Configs' Dependencies

This step can be skipped if the "Tela Nord" icon theme and "Nordic" GTK theme are already installed.
```bash
yay -S nordic-theme
git clone https://github.com/vinceliuice/Tela-icon-theme.git ~/Downloads/Tela-Icon-Theme/
./install.sh -a
rm -rf ~/Downloads/Tela-Icon-Theme
```
Also, install the proper cursor theme if not already present:
```bash
yay -S xcursor-breeze-neutral-git
```
### Setup "Extras" (Optional)
**LightDM**: To match LightDM-GTK-Greeter to the rest of this rice's theme, do the following steps:
```bash
sudo cp -rf ~/.config/_Extras/lightdm-gtk-greeter.conf /etc/lightdm/
cp ~/.config/_Extras/Nord-Mountains.png /etc/lightdm/
```
**Vim**: Move `.vimrc` to home directory:
```bash
cp ~/.config/_Extras/.vimrc ~/
```
**Bash**: Move `.bashrc` to home directory:
```bash
cp ~/.config/_Extras/.bashrc ~/
```

## Inspiration
- [Manas140's Dotfiles](https://github.com/Manas140/dotfiles)
- [Amogh's Dotfiles](https://github.com/amogh-w/dotfiles)

