build:
	@if [ ! -d .env ]; then\
  	echo ".env Directory not exists."; \
		cp -r .env.sample .env; \
	fi
	docker-compose up --build

test-node:
	@curl -d '{"name": "syamaguc"}' http://localhost:9090/2015-03-31/functions/function/invocations

update:
	@sls deploy function --function node-app
