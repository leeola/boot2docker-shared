

build:
	sh build_docker.sh
	docker build -t boot2docker-vbga .
	docker run -t -d --name boot2docker-vbga boot2docker-vbga /bin/bash
	docker cp boot2docker-vbga:boot2docker.iso boot2docker.iso
	docker stop boot2docker-vbga
	docker rm boot2docker-vbga
