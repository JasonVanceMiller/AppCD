package main

import (
        "net/http"
        "fmt"
)

func main(){
        fmt.Println("Starting")
        http.HandleFunc("/", hello)
        http.ListenAndServe(":2000", nil)
}
func hello(w http.ResponseWriter, r *http.Request){
        fmt.Fprintf(w, "Hello World\n")
}
