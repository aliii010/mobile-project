class Category {
  final String emoji, name;

  Category({required this.emoji, required this.name});
}

List<Category> categories = [
  Category(
    emoji: 'assets/cinema/explosion.png',
    name: 'Action',
  ),
  Category(
    emoji: 'assets/cinema/grinning-face.png',
    name: 'Comedy',
  ),
  Category(
    emoji: 'assets/cinema/frightening.png',
    name: 'Horror',
  ),
  Category(
    emoji: 'assets/cinema/hearts.png',
    name: 'Romance',
  )
];
