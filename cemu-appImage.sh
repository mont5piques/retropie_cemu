#!/usr/bin/env bash

# This file is not part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are

rp_module_id="cemu-appImage"
rp_module_desc="WII U emulator cemu"
rp_module_help="ROM Extensions: .wud .wux\n\nCopy your .wux .wud rom files to $romdir/wiiu\n\nDon't forget to add game keys to CEMU key database!"
rp_module_licence="GPL2 https://raw.githubusercontent.com/cemu/cemu/master/LICENSE"
rp_module_section="exp"
rp_module_flags="!arm"

function install_bin_cemu-appImage() {
    mkdir -p "$md_inst/bin"
    wget --content-disposition https://github.com/cemu-project/Cemu/releases/download/v2.0-61/Cemu-2.0-61-x86_64.AppImage -O "$md_inst/bin/cemu.AppImage"
    chmod +x "$md_inst/bin/cemu.AppImage"
}

function configure_cemu-appImage() {
    mkRomDir "wiiu"
    addEmulator 0 "$md_id" "wiiu" "$md_inst/bin/cemu.AppImage -f -g %ROM%"
    addSystem "wiiu"
}
