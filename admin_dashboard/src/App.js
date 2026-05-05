import React from 'react';
import { AppBar, Box, Toolbar, Typography, Container, Paper } from '@mui/material';

function App() {
  return (
    <Box sx={{ flexGrow: 1 }}>
      <AppBar position="static">
        <Toolbar>
          <Typography variant="h6" sx={{ flexGrow: 1 }}>
            KidLearn Admin Dashboard
          </Typography>
        </Toolbar>
      </AppBar>
      <Container maxWidth="sm" sx={{ mt: 5 }}>
        <Paper elevation={3} sx={{ p: 3, textAlign: 'center' }}>
          <Typography variant="h5" gutterBottom>
            Welcome to KidLearn Admin Dashboard
          </Typography>
          <Typography color="text.secondary">
            Use this dashboard to manage in-app content, ads, and feature configurations!
          </Typography>
        </Paper>
      </Container>
    </Box>
  );
}

export default App;
