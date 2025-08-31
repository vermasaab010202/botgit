# GitHub APK Build Setup Guide

## Step-by-Step Process:

### 1. Create GitHub Repository
- Go to [github.com](https://github.com)
- Click "New repository"
- Name: `dime-android-app`
- Make it Public (for free Actions)
- Click "Create repository"

### 2. Upload Your Project
**Option A: Web Interface (Easiest)**
- Click "uploading an existing file"
- Drag and drop the entire `android` folder
- Commit changes

**Option B: Git Commands**
```bash
git init
git add .
git commit -m "Initial Dime Android app"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/dime-android-app.git
git push -u origin main
```

### 3. Automatic APK Generation
- GitHub Actions will automatically start building
- Go to "Actions" tab in your repository
- Wait for build to complete (5-10 minutes)

### 4. Download APK
**Method 1: From Actions (Artifacts)**
- Actions tab → Latest workflow run
- Scroll down to "Artifacts" section
- Click "dime-app-debug-apk" to download

**Method 2: From Releases (Auto-created)**
- Go to "Releases" section
- Download `app-debug.apk` from latest release

### 5. Install on Phone
- Transfer APK to your Redmi phone
- Enable "Install unknown apps" in settings
- Tap APK to install

## What You Get:
✅ **Direct APK download** (no Android Studio needed)
✅ **Automatic builds** on every code change
✅ **Free hosting** on GitHub
✅ **Version tracking** with releases
✅ **Ready-to-install** APK file

## File Structure to Upload:
```
dime-android-app/
├── android/
│   ├── .github/workflows/build-apk.yml  ← Build configuration
│   ├── app/
│   ├── build.gradle.kts
│   ├── settings.gradle.kts
│   └── gradlew.bat
└── README.md
```

The APK will be approximately 10-15MB and work on Android 5.0+ devices.
