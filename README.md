## A Go (golang) app/service with a very minimal Docker image (~ 5 MB)

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
* launch the browser and point to the baseurl `localhost:8080`
    * port can be changed in `main.go` and `Dockerfile`
* the target OS is set to `linux` but it can be changed in the Makefile

### notes
* this example shows how to build a very minimal image of your go app without needing to use even alpine base image
    * the executable, which is fully statically linked, is built outside the container and then copied onto the image
* since the base image is `scratch`, there are known TLS limitations that need a workaround
