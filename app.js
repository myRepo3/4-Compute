var http = require('http');
var handleRequest = function(req, res){

res.writeHead(200);
res.end("<body style=background-color:black;><center> <img src=https://storage.googleapis.com/bootcamp-gcp-public/TCB.PNG><h1 style=color:white;> Hi! I am running in a container in Cloud Run.</h1><h1 style=color:white;>Congratulations! Your Google Run container has been successfully provisioned!</h1> <hr></center> ")}

const port= process.env.PORT || 8080;

var www = http.createServer (handleRequest);
www.listen(port);
