<footer>
  <div class="footer-content">
    <div class="footer-left">
      <p>&copy; <%= new java.util.Date().getYear()+1900 %> Shiva Sai's Perseverance Software Institute</p>
      <p>
        <a href="index.jsp">Home</a> |
        <a href="projects.jsp">Projects</a> |
        <a href="blog.jsp">Blog</a> |
        <a href="about.jsp">About</a> |
        <a href="contact.jsp">Contact</a>
      </p>
    </div>
    <div class="footer-right">
      <p id="anime-quote"></p>
    </div>
  </div>
</footer>

<script>
  const quotes = [
    "Believe in the me that believes in you!",
    "To know sorrow is not terrifying. What is terrifying is to know you can't go back to happiness you could have.",
    "The world isn’t perfect. But it’s there for us, doing the best it can. That’s what makes it so damn beautiful.",
    "I am the hope of the universe. I am the answer to all living things that cry out for peace."
  ];

  function showRandomQuote() {
    const quoteElement = document.getElementById("anime-quote");
    if (quoteElement) {
      const randomIndex = Math.floor(Math.random() * quotes.length);
      quoteElement.innerText = `"${quotes[randomIndex]}"`;
    }
  }

  showRandomQuote();
  setInterval(showRandomQuote, 10000); // Change quote every 10 seconds
</script>
