import socket

# Upravena cast z dokumentace od TCPClient

HOST = '127.0.0.1'
PORT = 8080
with socket.socket(socket.AF_INET, socket.SOCK_DGRAM) as s: # Prepsana cast na Socket_DGRAM
    s.connect((HOST,PORT))
    s.sendall(b'Ahoj svete')
    # Zadne data se neprijimaji v tomto kode