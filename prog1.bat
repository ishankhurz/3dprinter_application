@echo OFF

cd C:\Users\ishank10\Downloads\Slic3r

slic3r minimug.stl --print-center 40,40
slic3r minimug.stl --load config_correct_new.ini

rem Change directory to pronsole directory
cd C:\Users\ishank10\Downloads\Slic3r\Printrun-Win-Slic3r-03Feb2015

rem Copy .gcode file from Slic3r directory to this directory
copy C:\Users\ishank10\Downloads\Slic3r\minimug.gcode C:\Users\ishank10\Downloads\Slic3r\Printrun-Win-Slic3r-03Feb2015\minimug.gcode

