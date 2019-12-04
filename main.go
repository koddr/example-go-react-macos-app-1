package main

import (
	"encoding/json"
	"net/http"

	"github.com/gobuffalo/packr"
	"github.com/zserge/webview"
)

// Message : struct for message
type Message struct {
	Text string `json:"text"`
}

func main() {
	// Bind folder path for packaging with Packr
	folder := packr.NewBox("./ui/build")

	// Handle to ./static/build folder on root path
	http.Handle("/", http.FileServer(folder))

	// Handle to showMessage func on /hello path
	http.HandleFunc("/hello", showMessage)

	// Run server at port 8000 as goroutine
	// for non-block working
	go http.ListenAndServe(":8000", nil)

	// Let's open window app with:
	//  - name: Golang App
	//  - address: http://localhost:8000
	//  - sizes: 800x600 px
	//  - resizable: true
	webview.Open("Golang App", "http://localhost:8000", 800, 600, true)
}

func showMessage(w http.ResponseWriter, r *http.Request) {
	// Create Message JSON data
	message := Message{"World"}

	// Return JSON encoding to output
	output, err := json.Marshal(message)

	// Catch error, if it happens
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	// Set header Content-Type
	w.Header().Set("Content-Type", "application/json")

	// Write output
	w.Write(output)
}
