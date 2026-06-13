class Book {
  final String title;
  final String image;

  Book({required this.title, required this.image});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'] ?? 'Tanpa Judul',
      image: json['cover_i'] != null
          ? 'https://covers.openlibrary.org/b/id/${json['cover_i']}-L.jpg'
          : '',
    );
  }
}
