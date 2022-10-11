test:
	vagrant -v
	test -e Vagrantfile || exit
	make lint

lint:
	ansible-lint provisioning

# BEGIN
start:
	npm run dev
# END

.PHONY: test
