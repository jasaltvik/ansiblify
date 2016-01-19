# ansiblify

This is an opinionated attempt to make it as easy as possible to set
up my development environment when setting up a new workstation.
Currently this should support Debian and Ubuntu based distros, and is
now used setting up a Linux Mint environment.

## Setup

There is a `Makefile` included for convenience that has targets to do
initial setup as well as `Ansiblifying` your environment.

### make setup

Run this to install the latest `pip` and `Ansible`, as well as
creating a `group_vars/ansiblify/local.yml` for local overrides (more
on that below).

### make ansiblify

Run this to run the `ansiblify.yml` playbook using all the defaults (
given you haven't overridden anything in your `local.yml`)

## Local overrides

After running `make setup` you will have a `local.yml` for your local
overrides when running `make ansiblify`. Just add whatever overrides
you want within this file as they will be loaded automatically. This
file is not under version control. All important overrides are
documented within their roles and in this README.

See the `local.yml` override section per role as well as role READMEs
for more information about your choices.

## Roles

### editor

Role for installing and configuring your favorite editor.

#### Supported

* [Sublime Text 3](http://www.sublimetext.com/3)

#### local.yml important overrides

See role README for specifics and more defaults.

| Overrides               | Default   | Level |
|-------------------------|-----------|-------|
| editor_install          | true      | role  |
| editor_install_sublime  | true      | task  |
| editor_sublime_conf_dir | undefined | task  |
