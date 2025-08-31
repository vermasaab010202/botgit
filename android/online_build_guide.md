# Online APK Builder Services

## Option 1: GitHub Actions (Free)
1. Create GitHub repository
2. Upload your android project folder
3. Use GitHub Actions workflow to build APK automatically
4. Download APK from Actions artifacts

## Option 2: Appetize.io Build Service
- Upload project as ZIP
- Builds APK in cloud
- Download ready APK

## Option 3: BuildBot.io
- Free tier available
- Upload source code
- Automated APK generation

## Option 4: Codemagic.io
- Free builds for open source
- Connect GitHub repository
- Automatic APK generation

## GitHub Actions Workflow (Recommended)
Create `.github/workflows/build.yml`:

```yaml
name: Build APK
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - uses: actions/setup-java@v3
      with:
        java-version: '17'
        distribution: 'temurin'
    - name: Build APK
      run: |
        cd android
        chmod +x gradlew
        ./gradlew assembleDebug
    - name: Upload APK
      uses: actions/upload-artifact@v3
      with:
        name: app-debug
        path: android/app/build/outputs/apk/debug/app-debug.apk
```
