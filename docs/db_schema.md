# Firestore Schema (Suggested)

collections:
- configs (single doc 'app')
  - ads_enabled: boolean
  - banner_code: string
  - interstitial_code: string
  - native_code: string
  - ad_frequency: number
  - theme_color: string
  - safe_mode: boolean

- games
  - id
  - title
  - description
  - assets (array)

- levels
  - id
  - game_id
  - difficulty
  - question_json
  - correct_answer

- users (analytics)
  - user_id
  - sessions
  - progress

Security:
- Use Firebase rules to restrict writes to admins
- Sanitize ad script inputs before saving
