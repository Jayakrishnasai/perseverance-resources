<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Saiteja's AnimeHub</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <jsp:include page="header.jsp" />

  <!-- Home -->
  <section id="home">
    <h1>🌌 Shiva Sai's Perseverance Software Institute</h1>
    <div class="character-list" id="characterList"></div>
    <button class="button" onclick="toggleMusic()">🎵 Toggle Music</button>
    <audio id="BGMusic" loop>
      <source src="https://cdn.pixabay.com/audio/2023/03/16/audio_67b7fbe57e.mp3" type="audio/mp3">
    </audio>
  </section>

  <jsp:include page="footer.jsp" />

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
