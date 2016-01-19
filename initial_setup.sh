#!/usr/bin/env bash
#
# Run the necessary setup that is needed before Ansible can be used.
set -o errexit
set -o pipefail
set -o nounset

printf "\e[30;42mInstalling pip!\e[0m\n"
printf "\e[30;42mThis install follows the official install guide from https://pip.pypa.io/en/stable/installing/\e[0m\n\n"

printf "\e[30;42mFetching official pip bootstrap script\e[0m\n"
wget https://bootstrap.pypa.io/get-pip.py
printf '\e[30;42mDone\e[0m\n\n'

printf "\e[30;42mRun pip bootstrap script\e[0m\n"
sudo -H python get-pip.py
printf '\e[30;42mDone\e[0m\n\n'

printf "\e[30;42mpip version information\e[0m\n"
pip --version
printf '\e[30;42mDone\e[0m\n\n'

printf "\e[30;42mRemove downloaded pip script\e[0m\n"
rm get-pip.py
printf '\e[30;42mDone\e[0m\n\n'

printf "\e[30;42mInstalling latest Ansible via pip!\e[0m\n"
sudo -H pip install ansible
printf '\e[30;42mDone\e[0m\n\n'

printf "\e[30;42mAnsible version information\e[0m\n"
ansible --version
printf '\e[30;42mDone\e[0m\n\n'

printf "\e[30;42mCreate local.yml if it doesn't exist\e[0m\n"
touch group_vars/ansiblify/local.yml
printf '\e[30;42mDone\e[0m\n\n'
