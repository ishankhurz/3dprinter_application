@echo OFF
set /p ip=<mydata.txt
set "ext=.stl"
set "filepath=%ip%%ext%"
cd C:\Users\ishank10\Downloads\Slic3r
ping 127.0.0.1 -n 4 > nul
slic3r %filepath% --print-center 40,40
ping 127.0.0.1 -n 3 > nul
slic3r %filepath% --load config_correct_new.ini


