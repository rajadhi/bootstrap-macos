#!/usr/bin/env bash
# 
# Bootstrap script for setting up a new OSX machine
# 
# This should be idempotent so it can be run multiple times.
#
# Reading:
#
# - http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac
# - https://gist.github.com/MatthewMueller/e22d9840f9ea2fee4716
# - https://news.ycombinator.com/item?id=8402079
# - http://notes.jerzygangi.com/the-best-pgp-tutorial-for-mac-os-x-ever/

printf "\nStarting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    printf "\nInstalling homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Update homebrew recipes
brew update

printf "\nInstalling packages..."

printf "\nbrew install ack\n"
brew install ack

printf "\nbrew install mas\n"
brew install mas

printf "\nbrew install git\n"
brew install git

printf "\nbrew install python3\n"
brew install python3

printf "\nbrew install tree\n"
brew install tree 

printf "\nbrew install vim\n"
brew install vim

printf "\nbrew install wget\n"
brew install wget

printf "\nbrew install docker docker-machine\n"
brew install docker docker-machine

printf "\nbrew install rbenv \n"
brew install rbenv 

printf "\nbrew install maven\n"
brew install maven

printf "\nbrew install npm\n"
brew install npm   

printf "\nbrew install rpm\n"
brew install rpm   


printf "\nCleaning up...\n"
brew cleanup

printf "\nInstalling cask apps...\n"

printf "\nbrew cask install firefox\n"
brew cask install firefox

printf "\nbrew cask install iterm2\n"
brew cask install iterm2

printf "\nbrew cask install slack\n"
brew cask install slack

printf "\nbrew cask install vagrant\n"
brew cask install vagrant

printf "\nbrew cask install virtualbox\n"
brew cask install virtualbox

printf "\nbrew cask install vlc\n"
brew cask install vlc

printf "\nbrew cask install spotify\n"
brew cask install spotify

printf "\nbrew cask install microsoft-edge\n"
brew cask install microsoft-edge

printf "\nbrew cask install visual-studio-code\n"
brew cask install visual-studio-code

printf "\nbrew cask install google-backup-and-sync\n"
brew cask install google-backup-and-sync

printf "\nbrew cask install NordVPN\n"
brew cask install nordvpn

printf "\nbrew cask install Microsoft Office\n"
brew cask install microsoft-office

printf "\nbrew cask install docker\n"
brew cask install docker 

printf "\nbrew cask install intellij-idea\n"
brew cask install intellij-idea

printf "\nbrew cask install Alfred\n"
brew cask install alfred

printf "\nInstalling mas apps...\n"

printf "\nmas install whatsapp\n"
mas install 1147396723

printf "\nmas install Acorn 6 Image Editor\n"
mas install 1233861775

printf "\nmas install Time Zone Converter and Clock\n"
mas install  1255311569

printf "\nmas install 1147396723\n"
mas install 1147396723

printf "\nmas install Magnet\n"
mas install 441258766

printf "\nmas install Amphetamine\n"
mas install 937984704

printf "\nmas install Adguard\n"
mas install 1440147259

printf "\nmas install Grammerly\n"
mas install 1462114288

printf "\nUpgrading apps\n"
brew upgrade
brew cask upgrade
mas upgrade

printf "\nBootstrapping complete\n"
