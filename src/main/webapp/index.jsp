<%@ page import="java.util.*, com.training.perseverance.Character" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Perseverance Enhanced</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@600&family=Quicksand:wght@500&display=swap" rel="stylesheet">
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Quicksand', sans-serif;
      background: radial-gradient(circle at top, #141e30 0%, #243b55 100%);
      background-image: url('https://images8.alphacoders.com/131/1312566.jpeg');
      background-size: cover;
      background-position: center;
      height: 100vh;
      color: #fff;
      overflow: hidden;
      position: relative;
    }
    body::before {
      content: '';
      position: absolute;
      inset: 0;
      background: rgba(0, 0, 0, 0.55);
      z-index: 0;
    }
    .content {
      position: relative;
      z-index: 1;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding-top: 40px;
      text-align: center;
    }
    h1 {
      font-family: 'Orbitron', sans-serif;
      font-size: 3.5em;
      letter-spacing: 6px;
      color: #00fdfd;
      text-shadow: 0 0 20px #00fdfd, 0 0 30px #ffffff;
      animation: glow 2.5s ease-in-out infinite alternate;
    }
    h2 {
      font-size: 1.8em;
      color: #e0f7fa;
      margin: 10px 0;
      opacity: 0;
      animation: fadeIn 2s ease forwards 1s;
    }
    .logo {
      width: 100px;
      height: 100px;
      background-image: url('https://cdn-icons-png.flaticon.com/512/270/270798.png');
      background-size: cover;
      border-radius: 50%;
      box-shadow: 0 0 25px #00ffff;
      margin-bottom: 20px;
      animation: popIn 1s ease-out forwards;
    }
    .character-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
      gap: 20px;
      margin-top: 40px;
      width: 90%;
      max-width: 1000px;
      animation: fadeIn 2s ease forwards 1.5s;
    }
    .character {
      background: rgba(255, 255, 255, 0.05);
      border: 1px solid rgba(255, 255, 255, 0.1);
      border-radius: 15px;
      padding: 15px;
      backdrop-filter: blur(5px);
      box-shadow: 0 0 20px rgba(0, 255, 255, 0.2);
      transition: transform 0.4s ease, box-shadow 0.3s ease;
      transform-style: preserve-3d;
    }
    .character:hover {
      transform: rotateY(8deg) scale(1.05);
      box-shadow: 0 0 30px #00fdfd, 0 0 50px #ff00ff;
    }
    .character img {
      width: 120px;
      height: 120px;
      border-radius: 20px;
      box-shadow: 0 0 12px rgba(255, 255, 255, 0.3);
      margin-bottom: 10px;
      transition: transform 0.3s;
    }
    .button, .music-toggle {
      margin: 25px 10px 50px;
      padding: 14px 32px;
      font-size: 1.1em;
      font-family: 'Orbitron', sans-serif;
      border: none;
      border-radius: 30px;
      background: linear-gradient(135deg, #00ffff, #ff00ff);
      color: #000;
      cursor: pointer;
      transition: all 0.3s ease;
      box-shadow: 0 0 20px #00ffff, 0 0 40px #ff00ff;
    }
    .button:hover, .music-toggle:hover {
      transform: scale(1.1);
      box-shadow: 0 0 25px #00fdfd, 0 0 60px #f0f;
    }
    @keyframes glow {
      from { text-shadow: 0 0 10px #00fdfd; }
      to { text-shadow: 0 0 25px #00fdfd, 0 0 40px #0ff; }
    }
    @keyframes fadeIn { to { opacity: 1; } }
    @keyframes popIn { from { transform: scale(0); opacity: 0; } to { transform: scale(1); opacity: 1; } }
    #loader {
      position: fixed;
      inset: 0;
      background: #000;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;
      z-index: 9999;
      transition: opacity 1s ease;
    }
    #loader img {
      width: 90px;
      height: 90px;
      animation: spin 2s linear infinite;
    }
    #loader h2 {
      color: #0ff;
      font-family: 'Orbitron', sans-serif;
      margin-top: 20px;
      font-size: 1.4em;
      animation: glow 2s ease-in-out infinite alternate;
    }
    @keyframes spin {
      from { transform: rotate(0); }
      to { transform: rotate(360deg); }
    }
    #loader.hidden {
      opacity: 0;
      pointer-events: none;
    }
    @media (max-width: 600px) {
      h1 { font-size: 2em; }
      .character img { width: 80px; height: 80px; }
    }
  </style>
</head>
<body>
<div id="loader">
  <img src="https://cdn-icons-png.flaticon.com/512/270/270798.png" alt="Loading..." />
  <h2>Loading Perseverance...</h2>
</div>
<div class="content">
  <div class="logo"></div>
  <h1>Shiva Sai's Perseverance</h1>
  <h2>Version 3.1 — Anime Enhanced</h2>
  <div class="character-grid">
    <% 
      List<Character> characters = (List<Character>) request.getAttribute("characters");
      if (characters != null) {
        for (Character c : characters) {
    %>
      <div class="character" title="<%= c.getQuote() %>" onclick="playVoice('<%= c.getVoiceUrl() %>')">
        <img src="<%= c.getImageUrl() %>" alt="<%= c.getName() %>">
        <h2><%= c.getName() %></h2>
      </div>
    <% }} %>
  </div>
  <button class="button" onclick="alert('Welcome to the Anime Realm!')">⚔️ Enter</button>
  <button class="music-toggle" onclick="toggleMusic()">🎵 Toggle Music</button>
</div>
<audio id="bgMusic" loop>
  <source src="https://files.catbox.moe/23xpjb.mp3" type="audio/mp3">
</audio>
<script>
  let isPlaying = false;
  const music = document.getElementById('bgMusic');
  function toggleMusic() {
    if (isPlaying) music.pause();
    else music.play();
    isPlaying = !isPlaying;
  }
  function playVoice(url) {
    const audio = new Audio(url);
    audio.play();
  }
  window.addEventListener('load', () => {
    setTimeout(() => {
      document.getElementById('loader').classList.add('hidden');
    }, 2500);
  });
</script>
</body>
</html>
