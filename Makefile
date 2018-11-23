pull:
	grafana-sync \
		--directory=./grafana/dashboards \
		--username=admin \
		--password=admin \
		pull

push:
	grafana-sync \
		--directory=./grafana/dashboards \
		--username=admin \
		--password=admin \
		push

run:
	docker volume prune -f
	docker-compose up --build
