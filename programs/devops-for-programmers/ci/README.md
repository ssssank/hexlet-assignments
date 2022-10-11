# CI

В этом задании мы настроим CI для приложения на базе GitHub Actions.

## Ссылки

* [GitHub Actions](https://docs.github.com/en/actions)
* [Никита Соболев — Автоматизируем все с Github Actions](https://www.youtube.com/watch?v=QoCSvwkP_lQ)
* [Adding a workflow status badge](https://docs.github.com/en/actions/managing-workflow-runs/adding-a-workflow-status-badge)
* [Getting started with GitHub Actions](https://itnext.io/getting-started-with-github-actions-fe94167dbc6d)

## Задачи

### app/.github/workflows/workflow.yml

Создайте файл в котором будут выполняться установка зависимостей и запуск тестов и линтера после каждого пуша в основную ветку.

Для работы приложения необходим Node.js 14 версии. Используйте экшен [setup-node](https://github.com/actions/setup-node) пример можно посмотреть [тут](https://github.com/actions/setup-node#usage).

Зависимости устанавливаются командой `npm ci`. Запуск тестов осуществляется командой `npm test`, а линтера `npx eslint .`. Эти команды вынесены в Makefile можете использовать их.

### app/README.md

В ридми проекта добавьте бейдж на созданный воркфлоу.

Создайте на GitHub репозиторий и загрузите туда получившееся приложение.
При создании issue укажите ссылку на репозиторий в котором успешно выполняется пайплайн.
