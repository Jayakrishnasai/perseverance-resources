<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>About - Saiteja's AnimeHub</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <jsp:include page="header.jsp" />

  <section>
    <h2>👤 About Me</h2>
    <div class="about-container">
      <div class="avatar-container">
        <img src="https://i.pinimg.com/originals/c3/47/54/c347541235b34f8c4d2d1a0b3a33a25b.gif" alt="Avatar" class="avatar" onmouseover="playIntro()">
        <audio id="intro-audio" src="https://www.myinstants.com/media/sounds/wow-anime-sound-effect.mp3"></audio>
      </div>
      <div class="timeline-container">
        <h3>My Journey</h3>
        <ul class="timeline">
          <li>
            <h4>2023 - The Adventure Begins</h4>
            <p>Started my journey into the world of DevOps and Cloud.</p>
          </li>
          <li>
            <h4>2024 - Level Up!</h4>
            <p>Gained experience with Docker, Kubernetes, and Jenkins.</p>
          </li>
          <li>
            <h4>2025 - To be Continued...</h4>
            <p>Exploring new technologies and honing my skills.</p>
          </li>
        </ul>
      </div>
    </div>
    <div class="skills-container">
      <h3>Skills</h3>
      <div class="skill">
        <p>Java</p>
        <div class="skill-bar"><div class="skill-level" style="width: 80%;"></div></div>
      </div>
      <div class="skill">
        <p>Docker</p>
        <div class="skill-bar"><div class="skill-level" style="width: 70%;"></div></div>
      </div>
      <div class="skill">
        <p>Kubernetes</p>
        <div class="skill-bar"><div class="skill-level" style="width: 60%;"></div></div>
      </div>
      <div class="skill">
        <p>Anime Knowledge</p>
        <div class="skill-bar"><div class="skill-level" style="width: 95%;"></div></div>
      </div>
    </div>
  </section>

  <jsp:include page="footer.jsp" />

  <script>
    function playIntro() {
      document.getElementById('intro-audio').play();
    }
  </script>
</body>
</html>
