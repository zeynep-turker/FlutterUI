class Foods {
  String title;
  String number;
  String image;
  Foods({this.title, this.number, this.image});
}

List<Foods> foods = [
  Foods(title: 'Cake', number: '10', image: 'assets/images/cake.jpg'),
  Foods(title: 'Hamburger', number: '9', image: 'assets/images/hamburger.jpg'),
  Foods(title: 'Pasta', number: '12', image: 'assets/images/pasta.jpg'),
  Foods(title: 'Pasty', number: '15', image: 'assets/images/pasty.jpg'),
  Foods(
      title: 'Cheesecake', number: '15', image: 'assets/images/cheesecake.jpg'),
];
