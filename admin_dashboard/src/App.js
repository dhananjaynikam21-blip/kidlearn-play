import React from 'react';

export default function App(){
  return (
    <div style={{fontFamily: 'Arial, sans-serif', padding: 24}}>
      <h1>KidLearn Admin Panel (Starter)</h1>
      <p>Use this dashboard to manage ads, games, levels and feature flags.</p>
      <section>
        <h2>Quick Links</h2>
        <ul>
          <li>/config - App config (ads, theme)</li>
          <li>/games - Game list</li>
          <li>/levels - Levels metadata</li>
        </ul>
      </section>
    </div>
  );
}
