#!/bin/bash



    json={"\"calcs\"":1000,"\"loops\"":1000,"\"sleep\"":1}
    
    curl -X POST -H "Content-Type: application/json" http://54.196.127.145:8080/fibo/calcs -d $json 
    

