check: 
	docker compose config
up: check
	docker compose up -d
down:
	docker compose down
ps:
	docker compose ps -a
run:
	docker compose stop remix
	docker compose run --rm -v ./source:/app -p 3000:3000 remix bash
	docker compose start remix

run-db:
	docker compose stop db
	docker compose run --rm -v db:/var/lib/postgresql/data -p 5432:5432 db bash
	docker compose start db
