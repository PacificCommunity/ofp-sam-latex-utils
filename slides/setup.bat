@echo off

robocopy sty c:\home\latex\sty\spc /e /ndl /nfl /njs
setx TEXINPUTS .//;c:/home/latex//;

echo Installation completed
pause
