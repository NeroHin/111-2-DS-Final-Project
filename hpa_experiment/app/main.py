from fastapi import FastAPI
import socket
import time

app = FastAPI()

@app.get("/")
def read_root():
    host_name = socket.gethostname() 
    host_ip = socket.gethostbyname(host_name) 
    return {
        "Message": "You bought the ticket",
        "IP": host_ip, 
        "Port": 8000
        }
