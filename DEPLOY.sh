#!/usr/bin/env bash
# Deploy V2 to GitHub Pages
set -e

echo "🚀 Deploying V2 to GitHub Pages..."
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git..."
    git init
fi

# Check if remote exists
if ! git remote get-url origin &> /dev/null; then
    echo "🔗 Adding GitHub remote..."
    git remote add origin https://github.com/trollstaven/trollstaven.github.io.git
fi

echo "📝 Committing changes..."
git add .
git commit -m "V2: Add dark mode and modern UX improvements" || echo "No changes to commit"

echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -f origin main

echo ""
echo "✅ Deployed!"
echo "🌐 Your site will be live in 1-2 minutes at:"
echo "   https://trollstaven.github.io"
echo ""
echo "🧪 Test it:"
echo "   - Toggle dark mode (moon/sun button)"
echo "   - Try on mobile"
echo "   - Check hover effects"
echo ""
