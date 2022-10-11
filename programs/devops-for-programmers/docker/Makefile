test:
	test -f Dockerfile
	make lint
	make build

lint:
	hadolint Dockerfile

# BEGIN
build:
	docker image build -t alelitvinov/fastify:latest .
# END

.PHONY: test
