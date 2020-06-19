ECHO OFF
COLOR 1F
CLS
:MENU
CLS
ECHO.
ECHO     How to use:
ECHO           CD in to the folder or root folder where the videos are.
ECHO           Run this script from there. For example:
ECHO               "C:\TMP> C:\TOOLS\FFMPEG\Convert.bat"
ECHO           Select the option below.
ECHO.
ECHO             Note: AVI files are usable in Powerpoint Presentations. 
ECHO                   Script will process all subfolders with videos too.
ECHO.
ECHO.
ECHO                                      Video Converter Batching Script
ECHO                            ...............................................
ECHO                                            1  - MOV to AVI
ECHO                                            2  - MP4 to AVI
ECHO                                            3  - MTS to AVI
ECHO                                            4  - WMV to AVI
ECHO                                            5  - AVI to MOV
ECHO                                            6  - MKV to AVI
ECHO.
ECHO                                            20 - EXIT
ECHO.
SET /P M=".                          Type in a number and then press ENTER: "
IF %M%==1 GOTO OP1
IF %M%==2 GOTO OP2
IF %M%==3 GOTO OP3
IF %M%==4 GOTO OP4
IF %M%==5 GOTO OP5
IF %M%==6 GOTO OP6

IF %M%==20 GOTO EOF
GOTO MENU

:OP1
for /R %%A IN (*.mov) DO e:\tools\ffmpeg\bin\ffmpeg -y -i "%%A" -c:v mpeg4 -q 3 "%%A.avi"
Pause
GOTO MENU

:OP2
for /R %%A IN (*.mp4) DO e:\tools\ffmpeg\bin\ffmpeg -y -i "%%A" -c:v mpeg4 -q 3 "%%A.avi"
Pause
GOTO MENU

:OP3
for /R %%A IN (*.mts) DO e:\tools\ffmpeg\bin\ffmpeg -y -i "%%A" -c:v mpeg4 -q 3 "%%A.avi"
Pause
GOTO MENU

:OP4
for /R %%A IN (*.wmv) DO e:\tools\ffmpeg\bin\ffmpeg -y -i "%%A" -c:v mpeg4 -q 3 "%%A.avi"
Pause
GOTO MENU

:OP5
for /R %%A IN (*.avi) DO e:\tools\ffmpeg\bin\ffmpeg -y -i "%%A" -preset fast -profile:v baseline -c:v libx264 "%%A.mov"
Pause
GOTO MENU

:OP6
for /R %%A IN (*.mkv) DO e:\tools\ffmpeg\bin\ffmpeg -y -i "%%A" -c:v mpeg4 -q 3 "%%A.avi"
Pause
GOTO MENU

:EOF
COLOR 0F
cls

