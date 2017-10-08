#!/bin/bash



    json={"\"calcs\"":10000,"\"loops\"":5,"\"sleep\"":1}
    
    curl -X POST -H "Content-Type: application/json" http://34.228.161.89:8080/fibo/calcs -d $json 
    

