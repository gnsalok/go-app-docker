package main

import (
	"net/http"
)

func barHandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello bar, From Alok!!"))
}

func main() {
	http.HandleFunc("/bar", barHandler)
	http.ListenAndServe(":8080", nil)
}
