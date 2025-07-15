<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Perseverance</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">

  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      font-family: 'Quicksand', sans-serif;
      color: #e0f7fa;
      height: 100vh;
      background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
      background-image: url('https://imgix.ranker.com/list_img_v2/1337/2681337/original/the-best-itachi-uchiha-quotes?fit=crop&fm=pjpg&q=80&dpr=1&w=1200&h=630');
      background-size: cover;
      background-position: center;
      overflow: hidden;
      position: relative;
    }

    body::before {
      content: '';
      position: absolute;
      inset: 0;
      background: rgba(0, 0, 0, 0.4);
      z-index: 0;
    }

    .content {
      position: relative;
      z-index: 1;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;
      padding-top: 40px;
      text-align: center;
    }

    h1 {
      font-family: 'Orbitron', sans-serif;
      font-size: 3.5em;
      letter-spacing: 6px;
      color: #0ff;
      text-shadow: 0 0 15px #0ff, 0 0 30px #0ff;
      animation: glow 2.5s ease-in-out infinite alternate;
    }

    h2 {
      font-size: 1.8em;
      color: #ffffff;
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
      box-shadow: 0 0 20px #00ffff;
      margin-bottom: 20px;
      animation: popIn 1s ease-out forwards;
    }

    .character-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
      gap: 20px;
      margin-top: 30px;
      width: 90%;
      max-width: 1000px;
      animation: fadeIn 2s ease forwards 1.5s;
    }

    .character {
      background: rgba(255, 255, 255, 0.08);
      border-radius: 15px;
      padding: 15px;
      box-shadow: 0 0 12px #0ff2;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .character:hover {
      transform: scale(1.05);
      box-shadow: 0 0 25px #0ff, 0 0 50px #f0f;
    }

    .character img {
      width: 70px;
      height: 70px;
      border-radius: 50%;
      box-shadow: 0 0 10px #fff5;
      margin-bottom: 10px;
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
      box-shadow: 0 0 15px #00ffff, 0 0 40px #ff00ff;
    }

    .button:hover, .music-toggle:hover {
      transform: scale(1.1);
      box-shadow: 0 0 25px #0ff, 0 0 50px #f0f;
    }

    @keyframes glow {
      from { text-shadow: 0 0 10px #0ff; }
      to { text-shadow: 0 0 20px #0ff, 0 0 40px #0ff; }
    }

    @keyframes fadeIn { to { opacity: 1; } }
    @keyframes popIn { from { transform: scale(0); opacity: 0; } to { transform: scale(1); opacity: 1; } }

    @media (max-width: 600px) {
      h1 { font-size: 2.2em; }
      .character img { width: 50px; height: 50px; }
    }

    /* Sakura Petals */
    .petal {
      position: absolute;
      top: -50px;
      width: 20px;
      height: 20px;
      background: url('https://i.ibb.co/7jD9DnN/sakura.png') no-repeat center;
      background-size: contain;
      animation: fall linear infinite;
      z-index: 0;
      opacity: 0.8;
    }

    @keyframes fall {
      0% { transform: translateY(0) rotate(0deg); }
      100% { transform: translateY(110vh) rotate(360deg); }
    }

    /* Loader */
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
      width: 100px;
      height: 100px;
      animation: spin 2s linear infinite;
    }

    #loader h2 {
      color: #0ff;
      font-family: 'Orbitron', sans-serif;
      margin-top: 20px;
      font-size: 1.5em;
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
  </style>
</head>
<body>

  <!-- Sakura -->
  <script>
    for (let i = 0; i < 20; i++) {
      const petal = document.createElement('div');
      petal.className = 'petal';
      petal.style.left = `${Math.random() * 100}%`;
      petal.style.animationDuration = `${5 + Math.random() * 5}s`;
      petal.style.animationDelay = `${Math.random() * 10}s`;
      document.body.appendChild(petal);
    }
  </script>

  <!-- Loader -->
  <div id="loader">
    <img src="https://cdn-icons-png.flaticon.com/512/270/270798.png" alt="Loading..." />
    <h2>Loading Perseverance...</h2>
  </div>

  <div class="content">
    <div class="logo"></div>
    <h1>Shiva Sai's Perseverance</h1>
    <h2>Version 3 — Software Institute</h2>

    <div class="character-grid">
      <div class="character"><img src="https://cdn.staticneo.com/w/naruto/Nprofile2.jpg" alt="Naruto"><h2>Naruto</h2></div>
      <div class="character"><img src="https://static.beebom.com/wp-content/uploads/2025/01/Luffys-Hito-Hito-no-Mi-Model-Nika.jpg" alt="Luffy"><h2>Luffy</h2></div>
      <div class="character"><img src="https://staticg.sportskeeda.com/editor/2023/05/c2a62-16837201927512-1920.jpg" alt="Goku"><h2>Goku</h2></div>
      <div class="character"><img src="https://upload.wikimedia.org/wikipedia/en/d/d1/Itachi_Uchiha.png" alt="Itachi"><h2>Itachi</h2></div>
      <div class="character"><img src="https://staticg.sportskeeda.com/editor/2023/11/5c961-17009916164393-1920.jpg" alt="Gojo"><h2>Gojo</h2></div>
      <div class="character"><img src="https://i.pinimg.com/736x/94/3c/9d/943c9d66132825aa5f74a13d9efbe9a8.jpg" alt="Eren"><h2>Eren Yeager</h2></div>
    </div>

    <button class="button" onclick="alert('Welcome! Ready to explore.')">Enter</button>
    <button class="music-toggle" onclick="toggleMusic()">🎵 Toggle Music</button>
  </div>

  <!-- Music -->
  <audio id="bgMusic" loop>
    <source src="https://files.catbox.moe/23xpjb.mp3" type="audio/mp3">
    Your browser does not support the audio tag.
  </audio>

  <script>
    let isPlaying = false;
    const music = document.getElementById('bgMusic');

    function toggleMusic() {
      if (isPlaying) {
        music.pause();
      } else {
        music.play();
      }
      isPlaying = !isPlaying;
    }

    // Loader Fadeout
    window.addEventListener('load', () => {
      setTimeout(() => {
        document.getElementById('loader').classList.add('hidden');
      }, 2500);
    });
  </script>

</body>
</html>
