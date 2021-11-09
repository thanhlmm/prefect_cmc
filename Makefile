deploy:
	export PREFECT__SERVER__HOST=https://prefect-api.n8n.cuthanh.com/
	export PREFECT__SERVER__PORT=80
	python top_dex.py

build:
	prefect build -p top_dex.py -n "Top DEX"

build-docker:
	docker build . -t mihthanh27/prefect-cmc-dex  --platform linux/arm64/v8

build-push:
	docker buildx build . -t mihthanh27/prefect-cmc-dex  --push