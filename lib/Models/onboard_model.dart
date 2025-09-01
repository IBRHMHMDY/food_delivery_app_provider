class OnboardModel {
  final String imagePath, title, subTitle;

  OnboardModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnboardModel> onboards = [
  OnboardModel(
    imagePath: 'assets/images/onboard_1.png',
    title: 'Grab your\nDelicious food !',
    subTitle: 'Delivery food in your phone',
  ),
  OnboardModel(
    imagePath: 'assets/images/onboard_2.png',
    title: 'Grab your\nDelicious food !',
    subTitle: 'Delivery food in your phone',
  ),
  OnboardModel(
    imagePath: 'assets/images/onboard_3.png',
    title: 'Grab your\nDelicious food !',
    subTitle: 'Delivery food in your phone',
  ),
];