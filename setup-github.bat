@echo off
echo ========================================
echo        KASIFY DEPLOYMENT SETUP
echo ========================================
echo.
echo Kasify - Professional Township Business Directory
echo Live deployment preparation for North West Province
echo.

cd /d "%~dp0"

echo Checking Git installation...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ❌ Git is not installed or not in PATH
    echo.
    echo To install Git:
    echo 1. Download from: https://git-scm.com/download/win
    echo 2. Install with default settings
    echo 3. Restart command prompt
    echo 4. Run this script again
    echo.
    echo Or use GitHub Desktop: https://desktop.github.com/
    echo.
    pause
    exit /b 1
)

echo ✅ Git found! Version:
git --version
echo.

echo Step 1: Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo ❌ Failed to initialize repository
    pause
    exit /b 1
)
echo ✅ Repository initialized
echo.

echo Step 2: Configuring Git user (if not set)...
git config user.name >nul 2>&1
if %errorlevel% neq 0 (
    echo Please enter your GitHub username:
    set /p gituser=
    git config user.name "%gituser%"
    echo Please enter your email:
    set /p gitemail=
    git config user.email "%gitemail%"
)
echo ✅ Git user configured
echo.

echo Step 3: Adding all project files...
git add .
if %errorlevel% neq 0 (
    echo ❌ Failed to add files
    pause
    exit /b 1
)
echo ✅ Files staged for commit
echo.

echo Step 4: Creating initial commit...
git commit -m "🚀 Launch: Kasify Township Business Directory

• Professional mobile-first marketplace for North West Province
• Interactive business listings with website-like designs
• 6 comprehensive business categories
• WhatsApp direct messaging integration
• Authentic South African township focus
• Fast-loading responsive design
• Supporting local entrepreneurship"
if %errorlevel% neq 0 (
    echo ❌ Failed to commit files
    pause
    exit /b 1
)
echo ✅ Initial commit created
echo.

echo Step 5: Setting up main branch...
git branch -M main
if %errorlevel% neq 0 (
    echo ❌ Failed to set main branch
    pause
    exit /b 1
)
echo ✅ Main branch configured
echo.

echo ========================================
echo      DEPLOYMENT READY!
echo ========================================
echo.
echo 🎉 Your Kasify website is ready for GitHub deployment!
echo.
echo NEXT STEPS:
echo ──────────────────────────────────────
echo.
echo 1. 📝 Create GitHub Repository:
echo    • Go to: https://github.com/new
echo    • Repository name: kasify-website
echo    • Description: Township business directory for North West Province
echo    • Make it PUBLIC for free hosting
echo    • ⚠️  DO NOT initialize with README, .gitignore, or license
echo.
echo 2. 🔗 Connect to GitHub:
echo    • Copy the repository URL from GitHub
echo    • Run this command (replace YOUR-USERNAME):
echo.
echo      git remote add origin https://github.com/YOUR-USERNAME/kasify-website.git
echo      git push -u origin main
echo.
echo 3. 🌐 Enable Live Website:
echo    • Go to repository Settings → Pages
echo    • Source: Deploy from a branch
echo    • Branch: main, Folder: /(root)
echo    • Save
echo.
echo 4. 🎊 Your site goes live at:
echo      https://YOUR-USERNAME.github.io/kasify-website/
echo.
echo ========================================
echo.
echo 💡 PRO TIPS:
echo • Share your live URL with township businesses
echo • Add real business listings to attract customers
echo • Monitor GitHub Insights for visitor analytics
echo • Consider adding Google Analytics for business metrics
echo.
echo 📞 Need help? Check the README.md file
echo.
pause