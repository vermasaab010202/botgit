@echo off
echo ========================================
echo Building Dime Android APK
echo ========================================
echo.

REM Check if gradlew.bat exists
if not exist "gradlew.bat" (
    echo Error: gradlew.bat not found
    echo Please run this from the android project directory
    pause
    exit /b 1
)

echo Step 1: Cleaning previous builds...
call gradlew.bat clean

echo.
echo Step 2: Building debug APK...
call gradlew.bat assembleDebug

echo.
echo ========================================
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo ✅ SUCCESS! APK built successfully!
    echo.
    echo 📱 APK Location: app\build\outputs\apk\debug\app-debug.apk
    echo 📁 Full path: %CD%\app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo 🔧 To install on your Redmi phone:
    echo 1. Copy app-debug.apk to your phone storage
    echo 2. Open file manager on your phone
    echo 3. Navigate to the APK file and tap it
    echo 4. Allow installation from unknown sources if prompted
    echo 5. Follow the installation prompts
    echo.
    echo 📋 File size:
    dir "app\build\outputs\apk\debug\app-debug.apk" | findstr "app-debug.apk"
) else (
    echo ❌ BUILD FAILED!
    echo The APK was not created. Check the build output above for errors.
    echo.
    echo Common issues:
    echo - Java JDK not installed or not in PATH
    echo - Android SDK not configured
    echo - Gradle sync issues
    echo.
    echo 💡 Try opening the project in Android Studio first to resolve dependencies.
)

echo ========================================
pause
