@echo off
setlocal enabledelayedexpansion

echo ==========================================
echo    HARDWARE-ACCELERATED HEVC CONVERTER
echo ==========================================
echo.

:: Create an output folder in the same place as this script
if not exist "HEVC_Output" mkdir "HEVC_Output"

:: Loop through every file you drag and drop onto this script
for %%A in (%*) do (
    echo [PROCESSING]: "%%~nxA"
    
    :: Uses AMD's AMF hardware encoder for massive speed boosts
    ffmpeg -i "%%~A" -c:v hevc_amf -quality speed -c:a aac -b:a 128k "HEVC_Output\%%~nA_hevc.mp4"
    
    echo.
    echo [FINISHED]: "%%~nxA"
    echo ------------------------------------------
)

echo.
echo All conversions complete! Check the HEVC_Output folder.
pause