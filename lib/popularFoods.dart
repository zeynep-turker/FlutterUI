class popularFoods {
  String title;
  String price;
  String image;
  popularFoods({this.title, this.price, this.image});
}

List<popularFoods> popularfoods = [
  popularFoods(
      title: 'Cake', price: 'Rp.2500', image: 'assets/images/cake.jpg'),
  popularFoods(
      title: 'Pasty', price: 'Rp.4872', image: 'assets/images/pasty.jpg'),
  popularFoods(
      title: 'Cheesecake',
      price: 'Rp.9800',
      image: 'assets/images/cheesecake.jpg'),
  popularFoods(
      title: 'Hamburger',
      price: 'Rp.1256',
      image: 'assets/images/hamburger.jpg'),
  popularFoods(
      title: 'Pasta', price: 'Rp.3658', image: 'assets/images/pasta.jpg'),
];
