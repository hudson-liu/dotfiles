<h1 align="center">
  <img src="https://github.com/Hudson-Liu/Dotfiles-Desktop/blob/main/Plain%20Rice.png" width="80%">
  <br>
  Hudson's Custom Dotfiles
  <br>
  <img src="https://img.shields.io/github/commit-activity/y/Hudson-Liu/Dotfiles-Desktop?style=for-the-badge&labelColor=%234c566a&color=%235e81ac" alt="Commit Frequency">
  <img src="https://img.shields.io/github/license/Hudson-Liu/Dotfiles-Desktop?style=for-the-badge&labelColor=%234c566a&color=%235e81ac" alt="License">
</h1>

Dotfiles for a Nord-themed Arch Linux. This repo is only updated on a semi-regular basis; don't expect for everything to work OOTB. The rest of this README mostly serves as a guide for fully replicating this setup from scratch. These instructions may or may not work for your setup.

## Application List
**Base Software**
- *OS*: Arch Linux
- *Display Server*: X11/Xorg
- *Display Manager*: LightDM
- *Window Manager*: BSPWM + SXHKD (and FlashFocus)
- *Application Launcher*: Rofi (as dmenu)
- *Compositor*: Picom
- *Networking*: NetworkManager
- *AUR Helper*: Yay
- *Terminal*: Kitty
- *Status Bar*: Polybar
- *Sound Daemon*: PipeWire

**Other Applications**
- *Sound Front-End*: Pavucontrol
- *Disk Management*: GParted
- *Image Viewer*: Feh
- *IDE/Notes*: Neovim (NvChad)
- *TeX Distro*: TeX Live (pdfTeX + LaTeX)
- *PDF Viewer*: Zathura w/ MuPDF
- *File Explorer:*: Thunar + Thunar-Archive-Plugin + Thunar-Volman
- *Archive Management*: XArchiver + unzip + 7z
- *Video Player*:  mpv
- *Process Monitor*: htop (for cpu) + nvtop (for gpu)
- *Bluetooth*: Blueberry
- *GTK Theming*: Lxappearance
- *Keyboard Backlight*: OpenRGB
- *Screenshot Utility*: Scrot
- *Clipboard CLI Control*: Xclip
- *Source Control*: Git + Lazygit

## Theming
  - GTK Theme: Nord Theme
  - Cursor: BreezeX
  - Font: FiraCode Nerd Font
  - Unicode & Emojis: Noto Color Emoji

## Building Cur. Rice From Scratch 
>>> _Note: Anything surrounded by "quotes" is the EXACT package-name in either the official repos (pacman) or the AUR (yay)._

### Step 0: Pre-Install Prep.
To prevent any firmware issues, it's best to fully update Windows (via Windows Update) prior to beginning the Arch installation process. This is especially relevant for Microsoft Surface products.

Additionally, Arch doesn't support secure boot, so you'll need to disable that prior to beginning the installation process.

### Step 1: Install Arch
1. Download Arch ISO ({https://archlinux.org/download/})
2. Flash a USB using "dd"
    ```bash
    sudo dd bs=4M if=[iso] of=/dev/sdX
    ```
3. Plug in Ethernet
4. Plug in USB and run "archinstall"
| Key              | Value        |
|------------------|--------------|
| Additional Repos | N/A          |
| Language         | en           |
| Audio Config     | Pipewire     |
| Bootloader       | Systemd-Boot |
| Hostname         | lowfigh      |
| Profile          | minimal      |
|------------------|--------------|
 
6. Reboot.

### Step 2: Configure Network
1. Install "networkmanager"
2. Enable Network Manager Daemon
  ```bash
  systemctl enable NetworkManager.service --now
  ```
3. Connect to your WiFi networks

### Step 3: Setup BSPWM
1. Install Xorg
  ```bash
  sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xinput
  ```
2. Make an ".xinitrc" with the following text:
  ```bash
  sxhkd &
  exec bspwm
  ```
3. Install "git"
4. Run the following:
  ```bash
  git clone https://github.com/Hudson-Liu/Dotfiles.git
  cp -r ~/Downloads/Dotfiles/bspwm ~/.config/
  cp -r ~/Downloads/Dotfiles/sxhkd ~/.config/
  cp -r ~/Downloads/Dotfiles/polybar ~/.config/
  ```
5. Install dependencies for prev configs
    - "picom"
    - "flashfocus" (AUR)
    - "feh"
    - "polybar"
6. Setup Polybar
  
### Step 4: Install Kitty
## Inspiration
- [Manas140's Dotfiles](https://github.com/Manas140/dotfiles)
- [Amogh's Dotfiles](https://github.com/amogh-w/dotfiles)

