<nav>
  <a href="index.jsp" class="logo">🌌 Shiva Sai Hub</a>
  <a href="index.jsp">Home</a>
  <a href="projects.jsp">Projects</a>
  <a href="blog.jsp">Blog</a>
  <a href="about.jsp">About</a>
  <a href="contact.jsp">Contact</a>
</nav>

<script>
  document.addEventListener("DOMContentLoaded", function() {
    const links = document.querySelectorAll("nav a");
    const currentUrl = window.location.href;

    links.forEach(link => {
      if (link.href === currentUrl) {
        link.classList.add("active");
      }
    });
  });
</script>
