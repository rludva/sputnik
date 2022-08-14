package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/rludva/sputnik/src/bot"
)

func handler(w http.ResponseWriter, r *http.Request) {
	question := r.URL.Path[1:]
	answer := bot.Bot(question)
	content := `
	<!DOCTYPE html>
	<html>
	<head>
		<title>Simple bot..</title>
	</head>
	<body>
		<h1>SimpleBot</h1>
		<p>Answer: <span style="font-style: italic;">%v</span></p>
	</body>
	</html>
	`
	fmt.Fprintf(w, content, answer)
}

func main() {
	http.HandleFunc("/", handler)
	log.Fatal(http.ListenAndServe(":8080", nil))
}
