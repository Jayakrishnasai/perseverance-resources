<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Contact - Saiteja's AnimeHub</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <jsp:include page="header.jsp" />

  <section>
    <h2>📬 Contact</h2>
    <div class="contact-container">
      <div class="contact-form">
        <h3>Send a Message</h3>
        <form action="mailto:ssp@animedev.com" method="post" enctype="text/plain">
          <input type="text" name="name" placeholder="Your Name" required>
          <input type="email" name="email" placeholder="Your Email" required>
          <input type="text" name="subject" placeholder="Subject" required>
          <textarea name="message" placeholder="Your Message" required></textarea>
          <button type="submit">Send</button>
        </form>
      </div>
      <div class="contact-info">
        <h3>Contact Info</h3>
        <p>Email: ssp@animedev.com</p>
        <p>Discord: SuriTech#9021</p>
        <div class="social-buttons">
          <a href="#" class="social-btn github"></a>
          <a href="#" class="social-btn linkedin"></a>
          <a href="#" class="social-btn discord"></a>
        </div>
      </div>
    </div>
    <div id="map"></div>
  </section>

  <jsp:include page="footer.jsp" />

  <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
  <script>
    var map = L.map('map').setView([35.6895, 139.6917], 13); // Centered on Tokyo

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.marker([35.6895, 139.6917]).addTo(map)
      .bindPopup('<b>Anime Base</b><br>My secret hideout.')
      .openPopup();
  </script>
</body>
</html>
