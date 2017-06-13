#!/usr/bin/env bash

function init_homebrew {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap caskroom/cask
}

function install_jq {
    brew install jq
}

function install_pandoc {
    brew cask install pandoc
}

function install_tex {
    brew cask install mactex
}

function install_font {
    echo "install dumb font."
}

function main {
    init_homebrew
    install_jq
    install_pandoc
    install_tex
    install_font
}

main
