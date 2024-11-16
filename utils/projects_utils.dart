class ProjectsUtils {
  final String image;
  final String title;
  final String subtile;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectsUtils({
    required this.image,
    required this.title,
    required this.subtile,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

// Hobby projects
List<ProjectsUtils> hobbyProjectsUtils = [
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "Note App",
      subtile:
          "This is a local application used for writing notes and something you need reminder",
      androidLink: ""),
  ProjectsUtils(
    image: "assets/projects/2.png",
    title: "Quiz App",
    subtile: "An application for testing IQ",
  ),
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "To-Do App",
      subtile: "This is a local application used to track you activity",
      androidLink: ""),
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "News App",
      subtile:
          "This is an application which fetches the data and showcase the news in application",
      androidLink: ""),
];
// Work Projects
List<ProjectsUtils> workprojectUtils = [
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "Note App",
      subtile:
          "This is a local application used for writing notes and something you need reminder",
      androidLink: ""),
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "Note App",
      subtile:
          "This is a local application used for writing notes and something you need reminder",
      androidLink: ""),
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "Note App",
      subtile:
          "This is a local application used for writing notes and something you need reminder",
      androidLink: ""),
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "Note App",
      subtile:
          "This is a local application used for writing notes and something you need reminder",
      androidLink: ""),
];
