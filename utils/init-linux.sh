#!/usr/bin/env bash

function init_apt_get {
    apt-get update
}

function install_jq {
    apt-get -y install jq
}

function install_pandoc {
    wget -c $(curl https://api.github.com/repos/jgm/pandoc/releases/latest | jq -r '.assets[] | .browser_download_url' | grep 'deb$')
}

function install_tex {
    apt-get install -y texlive-full
}

function install_font {
    echo "install dumb font."
}

function main {
    init_apt_get
    install_jq
    install_pandoc
    install_tex
    install_font
}

main
