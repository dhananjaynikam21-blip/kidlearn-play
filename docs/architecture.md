# Architecture Overview

KidLearn Play is a Flutter mobile app that fetches runtime configuration and content from a backend API / Firestore. An Admin Panel allows authorized admins to update content, ad scripts, and feature flags without requiring an app update.

Components:
- Flutter App (mobile)
- Admin Dashboard (React)
- Backend API (Node.js / Firebase Functions)
- Database (Firestore / MongoDB)

Flow:
Admin Panel -> Backend API -> Database -> Flutter App (polls / realtime updates)
