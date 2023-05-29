from fastapi import FastAPI
import socket
import time

app = FastAPI()

@app.get("/")
def read_root():
    time.sleep(15) # Sleep for 15 seconds
    host_name = socket.gethostname() 
    host_ip = socket.gethostbyname(host_name) 
    return {"IP": host_ip, "Port": 8000}
