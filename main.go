package main

import "net/http"
import "fmt"

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("starting up go server on port 8080")
	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		fmt.Println("error starting up go server on port 8080: ", err)
	}
}

func handler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Welcome to the minimal image container!"))
}
