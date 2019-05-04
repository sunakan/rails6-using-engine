DC  = sudo docker-compose
# make [ターゲット名]
# ターゲット:依存するファイル
# 		コマンド

# make build
build:
	@$(DC) build

# make run
up:
	@$(DC) up

# make down
down:
	@$(DC) down

# make bash
bash:
	@$(DC) run --rm app bash

update:
	@$(DC) run --rm app bundle update blog_engine

deploy:
	git push heroku `git rev-parse --abbrev-ref HEAD`:master
