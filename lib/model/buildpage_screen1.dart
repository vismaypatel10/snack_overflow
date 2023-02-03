class BuildPage {
  String image;
  String title;

  BuildPage({required this.image, required this.title});
}

List<BuildPage> contents = [
  BuildPage(
      title: 'Hand-pickle high\n  quality snacks.',
      image: 'assets/images/onboarding_Page_1.png'),
  BuildPage(
      title: 'Shop global. Mind-\nblownly affordable.',
      image: 'assets/images/onboarding_Page_2.png'),
  BuildPage(
      title: '  Deliver on the\npromise of time.',
      image: 'assets/images/onboarding_Page_3.png'),
];
