#!/usr/bin/env python

import os
import subprocess

def checkdate():
    command = 'tzutil /s "Pacific Standard Time"'
    command = "echo %date%"
    date = subprocess.check_output(command, shell=True)
    command = "echo %time%"
    time = subprocess.check_output(command, shell=True)
    if date == "" and time == "":
        command = "start notepad.exe"

going = True
while going:
