#!/bin/bash

# Step 1: Processed content ke liye ek temporary copy banao
cp index.html index_processed.html

# Step 2: 'sed' command se har placeholder ko Render Environment Variable se replace karo
# Note: Render par environment variables ke naam se pehle '$' nahi lagana padta.
# Magar script mein unhe access karne ke liye '$' lagana zaroori hai.

sed -i "s|$$$$FIREBASE_API_KEY$$$$|$FIREBASE_API_KEY|g" index_processed.html
sed -i "s|$$$$FIREBASE_AUTH_DOMAIN$$$$|$FIREBASE_AUTH_DOMAIN|g" index_processed.html
sed -i "s|$$$$FIREBASE_DATABASE_URL$$$$|$FIREBASE_DATABASE_URL|g" index_processed.html
sed -i "s|$$$$FIREBASE_PROJECT_ID$$$$|$FIREBASE_PROJECT_ID|g" index_processed.html
sed -i "s|$$$$FIREBASE_STORAGE_BUCKET$$$$|$FIREBASE_STORAGE_BUCKET|g" index_processed.html
sed -i "s|$$$$FIREBASE_MESSAGING_SENDER_ID$$$$|$FIREBASE_MESSAGING_SENDER_ID|g" index_processed.html
sed -i "s|$$$$FIREBASE_APP_ID$$$$|$FIREBASE_APP_ID|g" index_processed.html
sed -i "s|$$$$FIREBASE_MEASUREMENT_ID$$$$|$FIREBASE_MEASUREMENT_ID|g" index_processed.html

# Step 3: Original file ko processed content se overwrite kardo
mv index_processed.html index.html

# Important: Yeh command file ko executable banata hai. Isse pehle run karna.
chmod +x index.html
