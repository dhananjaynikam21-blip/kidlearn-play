import express from 'express';
import cors from 'cors';

const app = express();
app.use(cors());
app.use(express.json());

app.get('/config', (req, res) => {
  res.json({
    ads_enabled: true,
    numbers_module: {
      enabled: true,
      max_number: 20
    },
    app_theme: 'kid',
    features: [
      'numbers',
      'sounds',
      'animations'
    ]
  });
});

app.get('/', (req, res) => {
  res.send('KidLearn Backend API is running.');
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`KidLearn Backend listening on port ${PORT}`);
});
