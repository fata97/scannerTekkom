@echo off
SET THEFILE=d:\kuliah\tekkom\progaramcuy\scangaes.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\kuliah\tekkom\progaramcuy\rsrc.o -s   -b base.$$$ -o d:\kuliah\tekkom\progaramcuy\scangaes.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
