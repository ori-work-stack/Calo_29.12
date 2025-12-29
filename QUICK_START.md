# ⚡ QUICK START - Fix All Errors NOW

## 🚨 THE PROBLEM
**Your app had NO backend API URL configured. It couldn't connect to the server.**

## ✅ FIXED
- Added `EXPO_PUBLIC_API_URL` to `.env`
- Created `server/.env` with database config
- Cleared Metro bundler cache
- Created IP auto-update script

---

## 🔥 3-STEP FIX

### 1️⃣ Start Backend
```bash
cd server
npm run dev
```
Wait for: `✅ Database connection successful` and `🚀 Server running on port 5000`

### 2️⃣ Start Client (New Terminal)
```bash
cd client
npm start -- --clear
```

### 3️⃣ Reload App
- Shake device → Tap "Reload"
- Or press `R` twice in Metro console

---

## ✅ IT WORKS IF...

- ✅ No more "Network Error" messages
- ✅ Calendar loads data
- ✅ Statistics show level, XP, streaks
- ✅ AI recommendations visible (GOLD users)
- ✅ No InternalBytecode errors

---

## 🔧 If IP Changes

When you switch Wi-Fi networks:
```bash
node scripts/update-ip-env.js
# Then restart server and client
```

---

## 📖 Full Details
See `URGENT_FIX_INSTRUCTIONS.md` for complete documentation.

---

**Status:** READY TO GO ✅
**Time to Fix:** 2 minutes
