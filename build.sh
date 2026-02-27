#!/bin/bash
# build.sh — wird von Netlify vor dem Deploy ausgeführt.
# Liest die Umgebungsvariablen und schreibt src/firebase-config.js.

mkdir -p src

cat > src/firebase-config.js << JSEOF
// Automatisch generiert durch build.sh — NICHT ins Git einchecken!
var firebaseConfig = {
  apiKey:            "${FIREBASE_API_KEY}",
  authDomain:        "${FIREBASE_AUTH_DOMAIN}",
  projectId:         "${FIREBASE_PROJECT_ID}",
  storageBucket:     "${FIREBASE_STORAGE_BUCKET}",
  messagingSenderId: "${FIREBASE_MESSAGING_SENDER_ID}",
  appId:             "${FIREBASE_APP_ID}",
};
JSEOF

echo "✅ src/firebase-config.js wurde generiert."