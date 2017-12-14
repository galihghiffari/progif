package main
import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	port:=8080

	http.HandleFunc("/ruangan/", func(w http.ResponseWriter, r*http.Request) {
		switch r.Method {
		case "GET":
			n:=r.URL.Path[len("/ruangan/"):]
			if n != "" {
				GetRuangan(w, r, n)
			} else {
				GetAllRuangan(w,r)
			}
		case "POST":
		case "DELETE":
		default:
			http.Error(w, "invalid request method.",405)
		}
	})

	log.Printf("Server starting on port %v\n", port)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%v", port),nil))
}

