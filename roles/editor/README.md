# ansiblify editor

This role will currently set up Sublime Text 3

## Role variables

### Defaults

The default is to run the editor role, but this can be overridden

    editor_install: true

Each editor will have its own override to be included or not

    editor_install_sublime: true

Sublime Text 3 build to install

    editor_sublime_build: "3083"

Location of the user home `.config` directory. This is used if you
want to copy existing configuration from a backup location to your
local `.config` directory.

    user_home_conf_dir: "~/.config/"

### Vars

Checks your architecture before choosing the Sublime package

    editor_sublime_arch:
      "{% if ansible_architecture == 'x86_64' %}amd64{% else %}i386{% endif %}"

The URL to fetch the Sublime deb package from

    editor_sublime_url:
      "https://download.sublimetext.com/sublime-text_build-{{ editor_sublime_build }}_{{ editor_sublime_arch }}.deb"

Temporary location for the downloaded file

    editor_sublime_tmp:
      "/tmp/sublime-text_build-{{ editor_sublime_build }}_{{ editor_sublime_arch }}.deb"

## Dependencies

None

## Example playbook

    - hosts: hosts
      roles:
         - { name: editor, when: editor_install }
