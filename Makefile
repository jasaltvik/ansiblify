.PHONY : all help setup ansiblify

all:
	@echo "Hello, nothing to do by default"
	@echo "Try 'make help'"

# target: help - Display callable targets.
help:
	@egrep "^# target:" [Mm]akefile

# target: setup - Run the initial setup script before we can run Ansible
setup:
	./initial_setup.sh

# target: provision-stage - Actually provision stage instances through Ansible Tower.
ansiblify:
	ansible-playbook -i ansiblify-hosts ansiblify.yml --connection=local --ask-become-pass
