<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Saiteja's AnimeHub</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Quicksand', sans-serif;
      color: #fff;
      background: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLh67nv8Rt1I1hs2DKGeUXPYgeGC_FDnzYZg&s') no-repeat center center fixed;
      background-size: cover;
      scroll-behavior: smooth;
    }

    .overlay {
      position: fixed;
      top: 0; left: 0;
      width: 100%; height: 100%;
      background: rgba(0, 0, 0, 0.6);
      z-index: 0;
    }

    nav {
      position: fixed;
      top: 0;
      width: 100%;
      background: rgba(0, 0, 0, 0.7);
      display: flex;
      justify-content: center;
      gap: 30px;
      padding: 15px 0;
      z-index: 2;
      backdrop-filter: blur(5px);
    }

    nav a {
      text-decoration: none;
      color: #00ffff;
      font-family: 'Orbitron', sans-serif;
      font-weight: 600;
      font-size: 1em;
      transition: 0.3s ease;
    }

    nav a:hover {
      color: #0ff;
      text-shadow: 0 0 10px #00ffff;
    }

    section {
      padding: 100px 20px 80px;
      text-align: center;
      z-index: 1;
      position: relative;
    }

    h1, h2 {
      font-family: 'Orbitron', sans-serif;
      text-shadow: 0 0 10px #00ffff;
    }

    h1 {
      font-size: 3em;
      color: #00ffff;
    }

    .character-list {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 20px;
      margin-top: 30px;
    }

    .character-card {
      background: rgba(255, 255, 255, 0.08);
      border: 1px solid rgba(255, 255, 255, 0.2);
      border-radius: 12px;
      padding: 15px 20px;
      width: 160px;
      text-align: center;
      backdrop-filter: blur(6px);
      transition: transform 0.3s;
    }

    .character-card:hover {
      transform: scale(1.05);
    }

    .character-card img {
      width: 70px;
      height: 70px;
      border-radius: 50%;
      margin-bottom: 10px;
      box-shadow: 0 0 10px #ffffff88;
    }

    .button {
      margin-top: 20px;
      padding: 10px 24px;
      font-family: 'Orbitron', sans-serif;
      font-size: 1em;
      border: none;
      border-radius: 30px;
      background: #00ffff;
      color: #000;
      cursor: pointer;
      box-shadow: 0 0 10px #00ffff, 0 0 30px #00ffff;
      transition: 0.3s ease;
    }

    .button:hover {
      transform: scale(1.05);
      box-shadow: 0 0 20px #00ffff, 0 0 40px #00ffff;
    }

    footer {
      text-align: center;
      padding: 40px 10px;
      background: rgba(0, 0, 0, 0.6);
      font-size: 0.9em;
      color: #ccc;
    }

    @media (max-width: 600px) {
      h1 { font-size: 2em; }
      .character-card { width: 120px; }
    }
  </style>
</head>
<body>

  <div class="overlay"></div>

  <!-- Navigation -->
  <nav>
    <a href="#home">Home</a>
    <a href="#projects">Projects</a>
    <a href="#blog">Blog</a>
    <a href="#about">About</a>
    <a href="#contact">Contact</a>
  </nav>

<!-- Home -->
<section id="home">
  <h1>🌌 Shiva Sai's Perseverance Software Institute</h1>
  <div class="character-list" id="characterList"></div>
  <button class="button" onclick="toggleMusic()">🎵 Toggle Music</button>
  <audio id="BGMusic" loop>
    <source src="https://cdn.pixabay.com/audio/2023/03/16/audio_67b7fbe57e.mp3" type="audio/mp3">
  </audio>
</section>

<!-- Projects -->
<section id="projects">
  <h2>🚀 Projects</h2>
  <p>• Anime Dashboard</p>
  <p>• Voice-Activated Assistant</p>
  <p>• JSP + Spring Boot Portal</p>
</section>

<!-- Blog -->
<section id="blog">
  <h2>📚 Blog</h2>
  <p>Coming soon: DevOps + Anime series!</p>
</section>

<!-- About -->
<section id="about">
  <h2>👤 About Me</h2>
  <p>I’m a DevOps enthusiast and anime fan building tech the fun way!</p>
</section>

<!-- Contact -->
<section id="contact">
  <h2>📬 Contact</h2>
  <p>Email: ssp@animedev.com</p>
  <p>Discord: SuriTech#9021</p>
</section>

<footer>
  &copy; 2025 Shiva Sai's Perseverance Software Institute — Built with 💙 + 🍥 Anime Energy
</footer>

<script>
  const characters = [
    {
      name: "Naruto",
      image: "https://cdn.staticneo.com/w/naruto/Nprofile2.jpg",
      quote: "Believe it!"
    },
    {
      name: "Luffy",
      image: "https://static.beebom.com/wp-content/uploads/2025/01/Luffys-Hito-Hito-no-Mi-Model-Nika.jpg",
      quote: "I'm gonna be the Pirate King!"
    },
    {
      name: "Goku",
      image: "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2018%2F02%2Fdragon-ball-super-goku-ultra-instinct-mastered-01.jpg?q=90&w=1400&cbr=1&fit=max",
      quote: "I am the hope of the universe!"
    },
    {
      name: "Itachi",
      image: "https://4kwallpapers.com/images/walls/thumbs_3t/19971.jpg",
      quote: "People live their lives bound by what they accept as true."
    },
    {
      name: "Gojo Satoru",
      image: "https://wallpapers-clan.com/wp-content/uploads/2023/12/jujutsu-kaisen-grimacing-satoru-gojo-background-scaled.jpg",
      quote: "I'm the strongest."
    }
  ];

  const characterList = document.getElementById("characterList");
  characters.forEach(char => {
    const card = document.createElement("div");
    card.className = "character-card";
    card.innerHTML = `
      <img src="${char.image}" title="${char.quote}" alt="${char.name}">
      <h3>${char.name}</h3>
    `;
    characterList.appendChild(card);
  });

  function toggleMusic() {
    const music = document.getElementById("BGMusic");
    music.paused ? music.play() : music.pause();
  }
</script>

</body>
</html>
