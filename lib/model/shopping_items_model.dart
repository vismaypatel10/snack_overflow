class shopping_items_model {
  String images;
  String imgtext;
  String description;
  String rating;
  String time;
  double price;

  shopping_items_model({
    required this.images,
    required this.imgtext,
    required this.description,
    required this.rating,
    required this.time,
    required this.price,
  });
}

List<shopping_items_model> shopping_items = [
  shopping_items_model(
      imgtext: 'Dalgona coffee',
      images: 'assets/images/dalgona_coffee.jpeg',
      description: 'Korean style',
      rating: '5.0',
      time: ' 30m',
      price: 10.99),
  shopping_items_model(
      imgtext: 'Authentic Samosa',
      images: 'assets/images/samosa_bundle.jpg',
      description: 'Indian fastfood',
      rating: '4.5',
      time: ' 10m',
      price: 09.99),
  shopping_items_model(
      imgtext: 'Simit for breakfast',
      images: 'assets/images/simit.jpeg',
      description: 'Bread',
      rating: '3.8',
      time: ' 21m',
      price: 12.99),
  shopping_items_model(
      imgtext: 'Taiyaki ice-cream',
      images: 'assets/images/taiyaki_ice_creem.jpeg',
      description: 'Japanese ice-creame',
      rating: '4.2',
      time: ' 15m',
      price: 3.99),
  // shopping_items_model(
  //     imgtext: 'Shaved ice with coffee',
  //     images: 'assets/images/shaved_ice.jpeg',
  //     description: 'Sweet and Creamy',
  //     rating: '4.1',
  //     time: ' 20m',
  //     price: '\$05.99'),
  // shopping_items_model(
  //     imgtext: 'Red bean mochi',
  //     images: 'assets/images/red_bean_mochi.jpeg',
  //     description: 'Japan sweet',
  //     rating: '3.1',
  //     time: ' 30m',
  //     price: '\$08.99'),
  // shopping_items_model(
  //     imgtext: 'Original Oreo coockies',
  //     images: 'assets/images/oreo_cookie.jpeg',
  //     description: 'Sweet creme',
  //     rating: '5.0',
  //     time: ' 9m',
  //     price: '\$10.99'),
  // shopping_items_model(
  //     imgtext: 'Strawberry in chocolate',
  //     images: 'assets/images/strawberry_chocolate.jpeg',
  //     description: 'chocolate dipped strawberry',
  //     rating: '3.5',
  //     time: ' 16m',
  //     price: '\$11.99'),
];
