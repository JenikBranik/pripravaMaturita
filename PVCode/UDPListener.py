import socket

HOST = '127.0.0.1'
PORT = 8080

# Spojeni se navazuje jen za pomoci Bind a recv

with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s:
    s.bind((HOST,PORT))
    print(f"Nasloucham na {HOST}, {PORT}")

    while True:
        data = s.recv(1024)
        print(f"{data} z adresy")