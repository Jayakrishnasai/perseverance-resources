<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Perseverance</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">

  <style>
    body {
      margin: 0;
      padding: 0;
      height: 100vh;
      background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
      font-family: 'Quicksand', sans-serif;
      color: #e0e0e0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      overflow: hidden;
    }

    h1 {
      font-family: 'Orbitron', sans-serif;
      font-size: 4em;
      letter-spacing: 6px;
      color: #00ffff;
      text-transform: uppercase;
      font-weight: 700;
      text-shadow: 0 0 10px #00ffff, 0 0 20px #00ffff;
      animation: glow 2s ease-in-out infinite alternate;
    }

    h2 {
      font-family: 'Quicksand', sans-serif;
      font-size: 2em;
      letter-spacing: 1.5px;
      color: #ffffff;
      margin: 20px 0;
      opacity: 0;
      animation: fadeIn 2s ease forwards 1s;
    }

    .character {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 15px;
      margin-top: 10px;
      animation: fadeIn 2s ease forwards 1.5s;
    }

    .character img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      box-shadow: 0 0 10px #ffffff55;
    }

    .logo {
      width: 100px;
      height: 100px;
      margin-bottom: 20px;
      background-image: url('https://cdn-icons-png.flaticon.com/512/270/270798.png');
      background-size: cover;
      border-radius: 50%;
      animation: popIn 1s ease-out forwards;
    }

    .button {
      margin-top: 30px;
      padding: 12px 28px;
      font-size: 1em;
      font-family: 'Orbitron', sans-serif;
      border: none;
      border-radius: 30px;
      background: #00ffff;
      color: #000;
      cursor: pointer;
      transition: all 0.3s ease;
      box-shadow: 0 0 10px #00ffff, 0 0 30px #00ffff;
    }

    .button:hover {
      background: #0ff;
      box-shadow: 0 0 20px #00ffff, 0 0 40px #00ffff;
      transform: scale(1.05);
    }

    @keyframes glow {
      from {
        text-shadow: 0 0 10px #00ffff, 0 0 20px #00ffff;
      }
      to {
        text-shadow: 0 0 20px #0ff, 0 0 40px #0ff;
      }
    }

    @keyframes fadeIn {
      to {
        opacity: 1;
      }
    }

    @keyframes popIn {
      0% {
        transform: scale(0);
        opacity: 0;
      }
      100% {
        transform: scale(1);
        opacity: 1;
      }
    }

    @media (max-width: 600px) {
      h1 {
        font-size: 2.5em;
      }

      h2 {
        font-size: 1.2em;
      }

      .logo {
        width: 70px;
        height: 70px;
      }

      .character img {
        width: 35px;
        height: 35px;
      }
    }
  </style>
</head>
<body>

  <div class="logo"></div>
  <h1>Shiva Sai's Perseverance</h1>
  <h2>Version 3 — Software Institute</h2>

  <div class="character">
    <img src="https://cdn.staticneo.com/w/naruto/Nprofile2.jpg?20120125214131" alt="Naruto Logo">
    <h2>Naruto</h2>
  </div>

  <div class="character">
    <img src="https://static.beebom.com/wp-content/uploads/2025/01/Luffys-Hito-Hito-no-Mi-Model-Nika.jpg" alt="Luffy Logo">
    <h2>Monkey D. Luffy</h2>
  </div>

  <button class="button" onclick="alert('Welcome! Ready to explore.')">Enter</button>

</body>
</html>
