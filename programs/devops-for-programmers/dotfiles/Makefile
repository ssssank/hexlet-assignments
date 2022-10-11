test:
	test -f host_vars/localhost.yml
	test -f inventory.ini
	make install
	ansible-playbook -i inventory.ini test.yml --check

# BEGIN
install:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

run:
	ansible-playbook -i inventory.ini playbook.yml -v
# END

.PHONY: test
