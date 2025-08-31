@echo off
echo ========================================
echo Quick APK Build - Minimal Setup
echo ========================================
echo.

echo Download these lightweight tools:
echo.
echo 1. PORTABLE JAVA JDK (No installation needed)
echo    - Download: https://github.com/adoptium/temurin17-binaries/releases
echo    - File: OpenJDK17U-jdk_x64_windows_hotspot_17.0.8.1_1.zip
echo    - Extract to: C:\portable-java\
echo.
echo 2. ANDROID COMMAND LINE TOOLS (Small download ~100MB)
echo    - Download: https://dl.google.com/android/repository/commandlinetools-win-9477386_latest.zip
echo    - Extract to: C:\android-tools\
echo.
echo 3. SET PATHS (Run these commands):
echo    set JAVA_HOME=C:\portable-java\jdk-17.0.8.1+1
echo    set ANDROID_HOME=C:\android-tools
echo    set PATH=%JAVA_HOME%\bin;%ANDROID_HOME%\bin;%PATH%
echo.
echo 4. INSTALL MINIMAL SDK:
echo    sdkmanager "platform-tools" "platforms;android-21" "build-tools;30.0.3"
echo.
echo 5. BUILD APK:
echo    gradlew.bat assembleDebug
echo.
echo Total download: ~200MB (vs 3GB for Android Studio)
echo ========================================
pause
