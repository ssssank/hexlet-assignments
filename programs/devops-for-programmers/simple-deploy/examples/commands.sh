# Подключаемся по ssh к хосту с IP 192.168.0.2
ssh username@192.168.0.2

# Таким образом можно зашифровать значение hexlet в переменную the_secret
# с помощью пароля в файле vault-password
ansible-vault encrypt_string --vault-password-file vault-password 'hexlet' --name 'the_secret'

# Чтобы расшифровать зашифрованные с помощью Ansible Vault переменные
# если пароль хранится в файле, используется флаг --vault-password-file
# флаг -i указывает на созданный инвентори файл
# флаг -v для подробного вывода
ansible-playbook -v -i inventory.ini playbook.yml --vault-password-file vault-password

# Устанавливаем коллекции определённые в файле requirements.yml
ansible-galaxy collection install -r requirements.yml

# Выполняем плейбук с зашифрованной переменной
ansible-playbook -i inventory.ini -v playbook.yml --vault-password-file vault-password
