# API Specification

Base URL (development): http://localhost:4000

Endpoints:
- GET /config
  - Returns app settings and ad configuration
  - Example response:
    {
      "ads_enabled": true,
      "banner_code": "<script>",
      "interstitial_code": "<script>",
      "native_code": "<script>",
      "theme_color": "#FFCC00"
    }

- GET /games
  - Returns list of games

- GET /levels
  - Returns level metadata

- GET /ads
  - Returns simplified ad config

Notes:
- In production, these endpoints should be backed by Firestore / MongoDB and protected with auth.
