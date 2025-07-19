<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Blog - Saiteja's AnimeHub</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <jsp:include page="header.jsp" />

  <section>
    <h2>📚 Blog</h2>

    <div class="blog-filters">
      <button class="filter-btn active" onclick="filterPosts('all')">All</button>
      <button class="filter-btn" onclick="filterPosts('devops')">DevOps</button>
      <button class="filter-btn" onclick="filterPosts('anime')">Anime</button>
      <button class="filter-btn" onclick="filterPosts('code')">Code</button>
    </div>

    <div id="blog-posts">
      <!-- Blog posts will be added here dynamically -->
    </div>
  </section>

  <jsp:include page="footer.jsp" />

  <script>
    const posts = [
      {
        title: "My First DevOps Project",
        date: "2025-07-19",
        excerpt: "A brief overview of my first project in the world of DevOps.",
        tags: ["devops"],
        content: "Full content of the blog post goes here."
      },
      {
        title: "Top 5 Anime of the Season",
        date: "2025-07-18",
        excerpt: "My personal ranking of the best anime from the current season.",
        tags: ["anime"],
        content: "Full content of the blog post goes here."
      },
      {
        title: "Useful Java Snippets",
        date: "2025-07-17",
        excerpt: "A collection of useful Java code snippets for everyday use.",
        tags: ["code"],
        content: "Full content of the blog post goes here."
      }
    ];

    function renderPosts(filteredPosts) {
      const blogPosts = document.getElementById("blog-posts");
      blogPosts.innerHTML = "";
      (filteredPosts || posts).forEach(post => {
        const postCard = document.createElement("div");
        postCard.className = "blog-card";
        postCard.innerHTML = `
          <h3>${post.title}</h3>
          <p class="post-meta">Posted on ${post.date} | Tags: ${post.tags.join(", ")}</p>
          <p>${post.excerpt}</p>
          <a href="#" onclick="showFullPost(this)">Read More</a>
          <div class="full-post" style="display:none;">
            <p>${post.content}</p>
            <h4>Comments</h4>
            <div class="comment-section">
              <textarea placeholder="Leave a comment..."></textarea>
              <button>Submit</button>
            </div>
          </div>
        `;
        blogPosts.appendChild(postCard);
      });
    }

    function filterPosts(tag) {
      const filtered = tag === 'all' ? posts : posts.filter(p => p.tags.includes(tag));
      renderPosts(filtered);
    }

    function showFullPost(link) {
      const fullPost = link.nextElementSibling;
      fullPost.style.display = fullPost.style.display === 'none' ? 'block' : 'none';
    }

    renderPosts();
  </script>
</body>
</html>
