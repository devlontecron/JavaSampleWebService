host=52.23.163.58
port=8080

json={"\"number\"":10}
echo $json
curl -X POST -H "Content-Type: application/json" http://$host:$port/fibo/fibonacci -d $json
echo ""


