@echo off

md c:\home\latex\sty\spc
xcopy sty c:\home\latex\sty\spc /s /y
setx TEXINPUTS .//;c:/home/latex//;

echo Installation completed
pause
