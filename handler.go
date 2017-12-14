package main

import(
	"net/http"
	"encoding/json"
	"log"
	_"github.com/go-sql-driver/mysql"
	"database/sql"
	"net/url"
)

//func jadwalHandler(w http.ResponseWriter, r *http.Request) {
//	myjadwal := JadwalRuangan {
//	Jadwal{"7601", "Labtek V", "07:00 - 18:00", "Senin - Jumat", "Pak Y", "081234567899\n"},
//	Jadwal{"9131", "GKU Barat", "07:00 - 18:00", "Senin - Jumat", "Pak Y", " 081298765432"},
//	}

//	json.NewEncoder(w).Encode(myjadwal)
//}

func GetAllRuangan(w http.ResponseWriter, r *http.Request) {
        db, err := sql.Open("mysql", "root:@tcp(127.0.0.1:3306)/jadwal")
        if err != nil {
                log.Fatal(err)
        }
        defer db.Close()

        myjadwal := Jadwal{}

        rows, err := db.Query("select Nama, Gedung, Lantai, Jambuka, Hari, Penanggungjawab, Kontak from jadwal")

        if err != nil {
                log.Fatal(err)
        }
        defer rows.Close()
        for rows.Next() {
                err := rows.Scan(&myjadwal.Nama, &myjadwal.Gedung, &myjadwal.Lantai, &myjadwal.Jambuka, &myjadwal.Hari, &myjadwal.Penanggungjawab, &myjadwal.Kontak)
		if err != nil {
                        log.Fatal(err)
                }
                json.NewEncoder(w).Encode(&myjadwal)
        }
        err = rows.Err()
}

func GetRuangan(w http.ResponseWriter, r *http.Request, n string){
	

	db, err := sql.Open("mysql","root:@tcp(127.0.0.1:3306)/jadwal")

	if err!= nil{
		log.Fatal(err)
	}
	defer db.Close()
	myjadwal := Jadwal{}

	rows, err := db.Query("select Nama, Gedung, Lantai, Jambuka, Hari, Penanggungjawab, Kontak from jadwal where Nama = ?", n)
	if err!= nil{
		log.Fatal(err)
	}
	defer rows.Close()
	for rows.Next(){
		err := rows.Scan(&myjadwal.Nama, &myjadwal.Gedung, &myjadwal.Lantai, &myjadwal.Jambuka, &myjadwal.Hari, &myjadwal.Penanggungjawab, &myjadwal.Kontak)
                if err != nil {
                        log.Fatal(err)
                }
                json.NewEncoder(w).Encode(&myjadwal)
        }
        err = rows.Err()
	if err!= nil{
		log.Fatal(err)
	}
}

func GetGedung(w http.ResponseWriter, r *http.Request, g string){
	

	db, err := sql.Open("mysql","root:@tcp(127.0.0.1:3306)/jadwal")

	if err!= nil{
		log.Fatal(err)
	}
	defer db.Close()
	myjadwal := Jadwal{}

	x, _ := url.QueryUnescape(g)
	rows, err := db.Query("select Nama, Gedung, Lantai, Jambuka, Hari, Penanggungjawab, Kontak from jadwal where Gedung = ?", x)
	if err!= nil{
		log.Fatal(err)
	}
	defer rows.Close()
	for rows.Next(){
		err := rows.Scan(&myjadwal.Nama, &myjadwal.Gedung, &myjadwal.Lantai, &myjadwal.Jambuka, &myjadwal.Hari, &myjadwal.Penanggungjawab, &myjadwal.Kontak)
                if err != nil {
                        log.Fatal(err)
                }
                json.NewEncoder(w).Encode(&myjadwal)
        }
        err = rows.Err()
	if err!= nil{
		log.Fatal(err)
	}
}

func GetPj(w http.ResponseWriter, r *http.Request, p string){
	

	db, err := sql.Open("mysql","root:@tcp(127.0.0.1:3306)/jadwal")

	if err!= nil{
		log.Fatal(err)
	}
	defer db.Close()
	myjadwal := Jadwal{}

	y, _ := url.QueryUnescape(p)
	rows, err := db.Query("select Nama, Gedung, Lantai, Jambuka, Hari, Penanggungjawab, Kontak from jadwal where Penanggungjawab = ?", y)
	if err!= nil{
		log.Fatal(err)
	}
	defer rows.Close()
	for rows.Next(){
		err := rows.Scan(&myjadwal.Nama, &myjadwal.Gedung,  &myjadwal.Lantai, &myjadwal.Jambuka, &myjadwal.Hari, &myjadwal.Penanggungjawab, &myjadwal.Kontak)
                if err != nil {
                        log.Fatal(err)
                }
                json.NewEncoder(w).Encode(&myjadwal)
        }
        err = rows.Err()
	if err!= nil{
		log.Fatal(err)
	}
}
