all: run

run: setup
	sudo ansible-playbook -i inventory main.yml

setup:
	ansible-galaxy install -r requirements.yml

.PHONY: setup all run
