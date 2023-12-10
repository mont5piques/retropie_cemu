# CEMU setup for Retropie

This guide will help you to add CEMU emulator support to Retropie. It will not work on a Raspberry PI but will work fine on a X86_64 machine.

Inspired from https://github.com/raelgc/retropie_rpcs3-appImage

## Requirements

Check if you have PS3 already listed in file `~/RetroPie-Setup/platforms.cfg`.

If not, create (or edit) file `/opt/retropie/configs/all/platforms.cfg` and add:

```
wiiu_exts=".wux .wud"
wiiu_fullname="Nintendo Wii U"
```

## Install

After that, install the RPCS3 setup script with:

```bash
wget https://raw.githubusercontent.com/mont5piques/retropie_cemu/main/cemu-appImage.sh -O ~/RetroPie-Setup/scriptmodules/emulators/cemu-appImage.sh
```

Now you can run **RetroPie Setup** script and `cemu` will available under `exp` (experimental) packages section.

## Games folder

After dumping your original WIIU games, copy your WUX or WUD files to `~/RetroPie/roms/wiiu/`.

**Important** You need to include the title key into cemu `keys.txt` file. The file is usually located under `~/.local/share/Cemu/`.

## CEMU initial setup

Before running any WIIU game from Retropie, you need to configure CEMU first. Do it by running `/opt/retropie/emulators/cemu-appImage/bin/cemu.AppImage`

Typically, you will need to :
* Activate Async shader compilation (General Settings > Graphics) to improve performance
* Set the graphic API to use (Vulkan or OpenGL)
* Set the audio output for TV
* Go to input settings and configure all your controllers
