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
      image: 'assets/projects/5.png',
      title: "Quiz App",
      subtile:
          "An application that helps user to assess their IQ. Data’s fetched from API using http and used provider as state management ",
      androidLink: ""),
//   ProjectsUtils(
//     image: "assets/projects/6.png",
//     title: "To - Do App",
//     subtile:
//         "An application that remindes of daily tasks. It is dedicated to helping users track things to do, and make daily plans free and provide important tasks reminders. Keep your life and work well organized.",
//   ),
  // ProjectsUtils(
  //     image: 'assets/projects/1.png',
  //     title: "To-Do App",
  //     subtile: "This is a local application used to track you activity",
  //     androidLink: ""),
  
];
// Work Projects
List<ProjectsUtils> workprojectUtils = [
  ProjectsUtils(
      image: 'assets/projects/1.png',
      title: "Note App",
      subtile:
          "NoteApp is a user-friendly application designed to help users easily capture and organize their thoughts & ideas. This app provide a seamless experience for managing personal notes efficiently.",
      androidLink: ""),
  ProjectsUtils(
      image: 'assets/projects/2.png',
      title: "Portfolio - web application",
      subtile:
          "This is a responsive website which showcase skills, qualifications, education, training, and experiences. It provides insight into my personality and work ethic.",
      androidLink: ""),
  ProjectsUtils(
      image: 'assets/projects/3.png',
      title: "360 NEWS",
      subtile:
          "News apps provide quick access to a variety of information. The ease of scrolling through the news on your smartphone is much better than buying a newspaper.",
      androidLink: ""),
//   ProjectsUtils(
//       image: 'assets/projects/4.png',
//       title: "Touristy",
//       subtile:
//           " A mobile travel app is a handy tool you can access on your smartphone, designed to simplify trip planning, and management. Travel apps can do a variety of things, from searching and booking flights, hotels, or rental cars to offering travel guides, maps, and itineraries.",
//       androidLink: ""),
];
