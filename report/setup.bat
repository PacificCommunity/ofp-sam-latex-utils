@echo off

robocopy sty c:\home\latex\cls\SCreport /e /ndl /nfl /njs
setx TEXINPUTS .//;c:/home/latex//;

echo Installation completed
pause
