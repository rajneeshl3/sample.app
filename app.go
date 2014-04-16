package main

import (
	"fmt"
	"io"
	"net/http"
	"strconv"
)

func handler(w http.ResponseWriter, req *http.Request) {
	format := `hello container

REMOTE_ADDR: %s

%s %s 
User-Agent: %s
`
	message := fmt.Sprintf(format, req.RemoteAddr, req.Method, req.RequestURI, req.UserAgent())

	w.Header().Set("Content-Type", "text/plain")
	w.Header().Set("Content-Length", strconv.Itoa(len(message)))
	w.WriteHeader(http.StatusOK)
	io.WriteString(w, message)
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}
