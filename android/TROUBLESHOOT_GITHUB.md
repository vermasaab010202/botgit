# GitHub APK Build Troubleshooting

## Why Actions/Releases tabs are missing:

### 1. Actions Tab Not Visible
**Cause**: Repository is private OR Actions not enabled
**Fix**: 
- Go to repository Settings → Actions → General
- Enable "Allow all actions and reusable workflows"
- OR make repository public (free Actions)

### 2. No Builds Yet
**Cause**: Workflow file not uploaded or not triggered
**Fix**: Make sure you uploaded the `.github/workflows/build-apk.yml` file

### 3. Workflow Not Running
**Cause**: No code changes pushed after workflow creation
**Fix**: Make any small change and push, or manually trigger

## Step-by-Step Fix:

### Option 1: Manual Trigger
1. Go to repository → Actions tab
2. Click "Build Dime Android APK" workflow
3. Click "Run workflow" button
4. Click green "Run workflow"

### Option 2: Push a Change
1. Edit any file (like README.md)
2. Commit the change
3. Workflow will auto-trigger

### Option 3: Check Repository Settings
1. Settings → Actions → General
2. Set to "Allow all actions"
3. Save changes

## What You Should See:
- **Actions tab**: List of workflow runs
- **Yellow dot**: Build in progress
- **Green checkmark**: Build successful
- **Red X**: Build failed

## If Still No Actions Tab:
Repository might be private. Either:
- Make it public (Settings → General → Danger Zone)
- OR upgrade to GitHub Pro for private repo Actions
