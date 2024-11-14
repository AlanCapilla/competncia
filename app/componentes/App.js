import React from 'react';
import { Button, TextField, Card, CardContent } from '@mui/material';

function App() {
  return (
    <div>
      <Card style={{ maxWidth: 400, margin: '0 auto', padding: '20px' }}>
        <CardContent>
          <h2>Bienvenido a Material-UI</h2>
          <TextField label="Nombre" variant="outlined" fullWidth margin="normal" />
          <Button variant="contained" color="primary">
            Enviar
          </Button>
        </CardContent>
      </Card>
    </div>
  );
}

export default App;
