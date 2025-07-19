<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Projects - Saiteja's AnimeHub</title>
  <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&family=Quicksand:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <jsp:include page="header.jsp" />

  <section>
    <h2>🚀 Projects</h2>

    <div id="project-form">
      <h3>Add a New Project</h3>
      <input type="text" id="projectName" placeholder="Project Name">
      <input type="text" id="techStack" placeholder="Tech Stack">
      <textarea id="projectDescription" placeholder="Description"></textarea>
      <input type="text" id="githubLink" placeholder="GitHub Link">
      <input type="text" id="liveLink" placeholder="Live Link">
      <button onclick="addProject()">Add Project</button>
    </div>

    <div id="project-list">
      <!-- Projects will be added here dynamically -->
    </div>
    <button onclick="deleteSelectedProjects()">Delete Selected</button>
  </section>

  <!-- The Modal -->
  <div id="projectModal" class="modal">
    <div class="modal-content">
      <span class="close" onclick="closeModal()">&times;</span>
      <h3 id="modalProjectName"></h3>
      <p><strong>Tech Stack:</strong> <span id="modalTechStack"></span></p>
      <p id="modalProjectDescription"></p>
      <a id="modalGithubLink" href="#" target="_blank">GitHub</a>
      <a id="modalLiveLink" href="#" target="_blank">Live Demo</a>
    </div>
  </div>

  <jsp:include page="footer.jsp" />

  <script>
    let projects = [
      {
        name: "Anime Dashboard",
        techStack: "JSP, Servlet, CSS",
        description: "A dynamic dashboard to display and manage anime series.",
        githubLink: "#",
        liveLink: "#"
      },
      {
        name: "Voice-Activated Assistant",
        techStack: "Java, Spring Boot",
        description: "A voice-activated assistant to perform various tasks.",
        githubLink: "#",
        liveLink: "#"
      },
      {
        name: "JSP + Spring Boot Portal",
        techStack: "JSP, Spring Boot, Maven",
        description: "A comprehensive web portal built with JSP and Spring Boot.",
        githubLink: "#",
        liveLink: "#"
      }
    ];

    function renderProjects() {
      const projectList = document.getElementById("project-list");
      projectList.innerHTML = "";
      projects.forEach((project, index) => {
        const projectCard = document.createElement("div");
        projectCard.className = "project-card";
        projectCard.innerHTML = `
          <input type="checkbox" class="project-checkbox" data-index="${index}">
          <h3>${project.name}</h3>
          <p><strong>Tech Stack:</strong> ${project.techStack}</p>
          <p>${project.description}</p>
        `;
        projectCard.onclick = () => openModal(project);
        projectList.appendChild(projectCard);
      });
    }

    function addProject() {
      const projectName = document.getElementById("projectName").value;
      const techStack = document.getElementById("techStack").value;
      const projectDescription = document.getElementById("projectDescription").value;
      const githubLink = document.getElementById("githubLink").value;
      const liveLink = document.getElementById("liveLink").value;

      if (projectName && techStack && projectDescription) {
        projects.push({
          name: projectName,
          techStack: techStack,
          description: projectDescription,
          githubLink: githubLink,
          liveLink: liveLink
        });
        renderProjects();
        // Clear form fields
        document.getElementById("projectName").value = "";
        document.getElementById("techStack").value = "";
        document.getElementById("projectDescription").value = "";
        document.getElementById("githubLink").value = "";
        document.getElementById("liveLink").value = "";
      } else {
        alert("Please fill in all fields.");
      }
    }

    function deleteSelectedProjects() {
      const checkboxes = document.querySelectorAll(".project-checkbox:checked");
      const indicesToDelete = Array.from(checkboxes).map(cb => parseInt(cb.dataset.index));
      projects = projects.filter((project, index) => !indicesToDelete.includes(index));
      renderProjects();
    }

    function openModal(project) {
      document.getElementById("modalProjectName").innerText = project.name;
      document.getElementById("modalTechStack").innerText = project.techStack;
      document.getElementById("modalProjectDescription").innerText = project.description;
      document.getElementById("modalGithubLink").href = project.githubLink;
      document.getElementById("modalLiveLink").href = project.liveLink;
      document.getElementById("projectModal").style.display = "block";
    }

    function closeModal() {
      document.getElementById("projectModal").style.display = "none";
    }

    window.onclick = function(event) {
      const modal = document.getElementById("projectModal");
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }

    renderProjects();
  </script>
</body>
</html>
