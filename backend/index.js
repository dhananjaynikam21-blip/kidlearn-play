const express = require('express');
const cors = require('cors');
const app = express();
app.use(cors());
app.use(express.json());

// Sample config - in production, load from DB (Firestore / MongoDB)
const sampleConfig = {
  ads_enabled: true,
  banner_code: "<AD_BANNER_CODE>",
  interstitial_code: "<AD_INTERSTITIAL_CODE>",
  native_code: "<AD_NATIVE_CODE>",
  ad_frequency: 2,
  theme_color: "#FFCC00",
};

app.get('/config', (req, res) => {
  res.json(sampleConfig);
});

app.get('/games', (req, res) => {
  res.json([{id: 'numbers-1-20', title: 'Numbers 1-20'}]);
});

app.get('/levels', (req, res) => {
  res.json([{levelId: 'n-1', game: 'tap_count', difficulty: 'easy'}]);
});

app.get('/ads', (req, res) => {
  res.json({ads_enabled: true, ad_frequency: 2});
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`Backend listening on ${PORT}`));
