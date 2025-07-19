# Shiva Sai's Perseverance Software Institute

## Description

This project is a personal portfolio and anime-themed web application. It serves as a showcase for various projects and a blog, all presented with a fun, anime-inspired interface. The project is built with Java, JSP, and Maven.

## Features

- A dynamic home page featuring a list of anime characters.
- Background music with a toggle button.
- Separate pages for Home, Projects, Blog, About Me, and Contact Information.
- A responsive design that works on different screen sizes.

## Project Structure

The project is structured as a standard Maven web application:

- `src/main/webapp`: Contains the JSP files, CSS, and other web resources.
  - `index.jsp`: The home page.
  - `projects.jsp`: The projects page.
  - `blog.jsp`: The blog page.
  - `about.jsp`: The about me page.
  - `contact.jsp`: The contact page.
  - `header.jsp`: A common header included in all pages.
  - `footer.jsp`: A common footer included in all pages.
  - `styles.css`: The stylesheet for the application.
  - `WEB-INF/web.xml`: The deployment descriptor for the application.
- `pom.xml`: The Project Object Model file for Maven.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

You will need to have the following software installed on your machine:

- Java Development Kit (JDK) 8 or later
- Apache Maven

### Installation

1. Clone the repo:
   ```sh
   git clone https://github.com/your_username/your_repository.git
   ```
2. Navigate to the project directory:
   ```sh
   cd your_repository
   ```

## Usage

To build and run the project, use the following Maven command:

```sh
mvn clean install war:war
```

This will create a `Persevrence_SSP.war` file in the `target` directory. You can then deploy this WAR file to any Java web server, such as Apache Tomcat.

## Built With

* [Java](https://www.java.com/)
* [Maven](https://maven.apache.org/) - Dependency Management
* [JSP](https://www.oracle.com/java/technologies/jspt.html) - JavaServer Pages

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
