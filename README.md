## An example that shows how to build and use an extremely minimal Docker image (~ 5 MB) for a Go web service

### tech stack
* **Go** - a programming language that is fast, uses minimal resources and supports high concurrency
* **Docker** - container software

### pre-requisites
* Go is installed. To verify, run `go version`
* GOPATH is set (e.g. set to `~/go`)
* PATH includes `GOPATH/bin`
* `Docker` is installed. To verify, run `docker --version`

### getting started
* clone repo or download zip
* in the project directory, run `make cleanrun`
* check the image size with `docker images | grep pinbar/go-docker-minimal`

### test the service
* launch the browser and point to the baseurl `localhost:8080`
    * port can be changed in `main.go` and `Dockerfile`
* use the make commands in the `Makefile` to start or stop the container

### notes
* the executable, which is fully statically linked, is built outside the container and then copied onto the image. This allows it to be able to run independently.
* since the base image is `scratch`, there are known TLS limitations that need a workaround
* the target OS is set to `linux` but it can be changed in the `Makefile`
