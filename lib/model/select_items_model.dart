class select_items_model {
  String images;
  String imgtext;

  select_items_model({
    required this.images,
    required this.imgtext,
  });
}

List<select_items_model> select_items = [
  select_items_model(
    imgtext: 'Dalgona\ncoffee',
    images: 'assets/images/dalgona_coffee.jpeg',
  ),
  select_items_model(
      imgtext: 'Authentic\nSamosa',
      images: 'assets/images/authentic_samosa.jpeg'),
  select_items_model(
      imgtext: 'Simit for\nbreakfast', images: 'assets/images/simit.jpeg'),
  select_items_model(
    imgtext: 'Taiyaki ice\ncream',
    images: 'assets/images/taiyaki_ice_creem.jpeg',
  ),
  select_items_model(
    imgtext: 'Shaved ice\nwith coffee',
    images: 'assets/images/shaved_ice.jpeg',
  ),
  select_items_model(
      imgtext: 'Red bean\nmochi', images: 'assets/images/red_bean_mochi.jpeg'),
  select_items_model(
      imgtext: 'Original Oreo\ncoockies',
      images: 'assets/images/oreo_cookie.jpeg'),
  select_items_model(
    imgtext: 'Strawberry in\nchocolate',
    images: 'assets/images/strawberry_chocolate.jpeg',
  ),
];
