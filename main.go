package main
import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	port:=9131

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
	
	http.HandleFunc("/gedung/", func(w http.ResponseWriter, r*http.Request) {
		switch r.Method {
		case "GET":
			g:=r.URL.Path[len("/gedung/"):]
			GetGedung(w, r, g)
		case "POST":
		case "DELETE":
		default:
			http.Error(w, "invalid request method.",405)
		}
	})
	
	http.HandleFunc("/pj/", func(w http.ResponseWriter, r*http.Request) {
		switch r.Method {
		case "GET":
			p:=r.URL.Path[len("/pj/"):]
			GetPj(w, r, p)
		case "POST":
		case "DELETE":
		default:
			http.Error(w, "invalid request method.",405)
		}
	})

	log.Printf("Server starting on port %v\n", port)
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%v", port),nil))
}

