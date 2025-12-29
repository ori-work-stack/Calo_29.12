#!/bin/bash

echo "🧹 Clearing React Native / Expo cache..."

# Stop any running Metro bundler processes
echo "Stopping Metro bundler..."
pkill -f "react-native" || true
pkill -f "metro" || true

# Clear Metro bundler cache
echo "Clearing Metro bundler cache..."
rm -rf .expo
rm -rf node_modules/.cache
rm -rf $TMPDIR/metro-* 2>/dev/null || true
rm -rf $TMPDIR/haste-map-* 2>/dev/null || true
rm -rf $TMPDIR/react-* 2>/dev/null || true

# Clear Android build cache
if [ -d "android" ]; then
  echo "Clearing Android cache..."
  cd android
  ./gradlew clean || true
  cd ..
  rm -rf android/.gradle
  rm -rf android/app/build
fi

# Clear Watchman cache (if installed)
if command -v watchman &> /dev/null; then
  echo "Clearing Watchman cache..."
  watchman watch-del-all
fi

echo "✅ Cache cleared successfully!"
echo ""
echo "To start the app again, run:"
echo "  npm start -- --clear"
