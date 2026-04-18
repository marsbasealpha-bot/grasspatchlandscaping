@echo off
echo ============================================
echo  Grass Patch Landscaping - Image Setup
echo ============================================
echo.

set "PROJECT=C:\Users\Admin\.gemini\antigravity\scratch\grasspatchlandscaping"
set "BRAIN=C:\Users\Admin\.gemini\antigravity\brain\1169be9e-41d6-4895-b9e6-71eaa875a4a7"

echo Creating images directory...
if not exist "%PROJECT%\images" mkdir "%PROJECT%\images"

echo Copying hero background...
copy "%BRAIN%\hero_background_1776446466032.png" "%PROJECT%\images\hero-bg.png" /Y

echo Copying lawn mowing image...
copy "%BRAIN%\lawn_mowing_service_1776446483316.png" "%PROJECT%\images\lawn-mowing.png" /Y

echo Copying trimming image...
copy "%BRAIN%\trimming_service_1776446499170.png" "%PROJECT%\images\trimming.png" /Y

echo Copying service area image...
copy "%BRAIN%\service_area_1776446512234.png" "%PROJECT%\images\service-area.png" /Y

echo.
echo Now looking for your logo in common locations...
echo.

REM Try common download locations
if exist "%USERPROFILE%\Downloads\logo.png" (
    echo Found logo in Downloads!
    copy "%USERPROFILE%\Downloads\logo.png" "%PROJECT%\images\logo.png" /Y
    goto :logodone
)

REM Search for grass patch related images
echo.
echo Could not auto-find logo. Please copy your logo manually:
echo   FROM: wherever your logo is saved
echo   TO:   %PROJECT%\images\logo.png
echo.
echo Or drag and drop your logo file here and press Enter:
set /p LOGOPATH="Logo path: "
if exist "%LOGOPATH%" (
    copy "%LOGOPATH%" "%PROJECT%\images\logo.png" /Y
    echo Logo copied!
) else (
    echo File not found. Please copy the logo manually.
)

:logodone
echo.
echo ============================================
echo  Setup complete! 
echo  
echo  To view the site, open:
echo  %PROJECT%\index.html
echo ============================================
echo.
pause
