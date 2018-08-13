#/usr/bin/python
import socket

listener = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
listener.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
listener.bing(("10.0.2.15", 4444))
listener.listen(0)

print("[+] listening for incoming connections")

listener.accept()

print("[+] Connection established")
