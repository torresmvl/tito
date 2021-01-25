
base:
	docker build -t ghcr.io/torresmvl/tito:base . --load

nodejs:
	docker build -t ghcr.io/torresmvl/tito:node ./node --load
