clean: stop
	-docker rmi -f pinbar/go-docker-minimal:latest
	rm -f main

build:
	CGO_ENABLED=0 GOOS=linux go build main.go

image:
	docker build -t pinbar/go-docker-minimal:latest .

run:
	docker run --name go-minimal --rm -p 8080:8080 pinbar/go-docker-minimal:latest

stop:
	-docker stop go-minimal

cleanrun: clean build image run
rerun: run
