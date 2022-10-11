test:
	vagrant -v
	test -e Vagrantfile || exit
	npm install --dry-run

# BEGIN
start:
	vagrant up

connect:
	vagrant ssh

install:
	npm install

init:
	npm init -y fastify

stop:
	vagrant halt
# END

.PHONY: test
