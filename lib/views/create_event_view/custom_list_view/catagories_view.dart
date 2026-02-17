class CatagoriesView {
  final String image;
  final String title;
  final String date;
  final String time;
  final String location;

  CatagoriesView({
    required this.image,
    required this.title,
    required this.date,
    required this.time,
    required this.location,
  });
}
final List<CatagoriesView> events = [
  CatagoriesView(
    image: "assets/images/event_image.png",
    title: "Virginia Philips Wine Testing",
    date: "18/06/25",
    time: "08:30PM",
    location: "Rampura Dhaka, Bangladesh",
  ),
  CatagoriesView(
    image: "assets/images/event_image.png",
    title: "Tech Conference",
    date: "18/06/25",
    time: "08:30PM",
    location: "Rampura Dhaka, Bangladesh",
  ),
];
