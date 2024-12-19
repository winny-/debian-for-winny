CHECK ?= 0
ifeq ($(CHECK),1)
ANSIBLE_FLAGS += --check --diff
endif

all: run

run: setup
	sudo ansible-playbook -i inventory $(ANSIBLE_FLAGS) main.yml

setup:
	ansible-galaxy install -r requirements.yml

.PHONY: setup all run
