@echo off
echo ========================================
echo Minimal Android Build Setup
echo ========================================
echo.

echo This script will help you set up minimal tools to build APK
echo.
echo Step 1: Download Java JDK 17 (Required)
echo - Go to: https://adoptium.net/temurin/releases/
echo - Download: OpenJDK 17 (Windows x64 MSI)
echo - Install with default settings
echo.
echo Step 2: Download Android Command Line Tools
echo - Go to: https://developer.android.com/studio#command-tools
echo - Download: Command line tools only (Windows)
echo - Extract to: C:\android-sdk\cmdline-tools\latest\
echo.
echo Step 3: Set Environment Variables
echo - Add to PATH: C:\android-sdk\cmdline-tools\latest\bin
echo - Set ANDROID_HOME: C:\android-sdk
echo - Set JAVA_HOME: (Java installation path)
echo.
echo Step 4: Install SDK Components
echo sdkmanager "platform-tools" "platforms;android-34" "build-tools;34.0.0"
echo.
echo Step 5: Build APK
echo gradlew.bat assembleDebug
echo.
echo ========================================
echo Press any key to continue...
pause > nul

REM Check if Java is installed
java -version 2>nul
if %errorlevel% neq 0 (
    echo.
    echo ❌ Java not found! Please install Java JDK 17 first.
    echo Download from: https://adoptium.net/temurin/releases/
    echo.
    pause
    exit /b 1
)

echo ✅ Java found!
java -version

REM Check Android SDK
if not exist "C:\android-sdk\cmdline-tools" (
    echo.
    echo ❌ Android SDK not found!
    echo Please download command line tools from:
    echo https://developer.android.com/studio#command-tools
    echo.
    pause
    exit /b 1
)

echo ✅ Ready to build APK!
echo Run: gradlew.bat assembleDebug
pause
