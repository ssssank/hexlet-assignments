# Установка Heroku
# Все способы описаны здесь https://devcenter.heroku.com/articles/heroku-cli

# Через snap
sudo snap install --classic heroku

# Устанавливает в /usr/local/lib/heroku и /usr/local/bin/heroku
curl https://cli-assets.heroku.com/install.sh | sh

# Для работы с Heroku необходимо залогиниться
heroku login
# heroku: Press any key to open up the browser to login or q to exit
#  ›   Warning: If browser does not open, visit
#  ›   https://cli-auth.heroku.com/auth/browser/***
# heroku: Waiting for login...
# Logging in... done
# Logged in as me@example.com

# Heroku позволяет деплоить по коммиту. После пуша насчнётся процесс сборки и релиза
git push heroku master
# Если необходимо задеплоить не всё приложение целиком, а какую-то часть, чтобы оно было корневым в удалённом репозитории herkou
git subtree push --prefix path/to/dir heroku master
