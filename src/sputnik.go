package main

import (
	"fmt"
	"log"
	"net/http"

	"bot"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "%s", bot.Bot("ping"))
}

func main() {
	http.HandleFunc("/", handler)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
