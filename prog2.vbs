Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile("C:\xampp\htdocs\mydata.txt", 1)
content = file.ReadAll
Dim path 
path = "C:\Users\ishank10\Downloads\Slic3r\" & content & ".gcode"
Dim cmmd 
cmmd = "load" & " " & path
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "C:\Users\ishank10\Downloads\Slic3r\Printrun-Win-Slic3r-03Feb2015\pronsole.exe", 9 
WScript.Sleep 500
WshShell.SendKeys "connect"
WScript.Sleep 200
WshShell.SendKeys "{ENTER}"
WScript.Sleep 200
WshShell.SendKeys cmmd
WScript.Sleep 200
WshShell.SendKeys "{ENTER}"