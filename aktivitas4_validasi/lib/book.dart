import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  final String? category;

  const BooksPage({super.key, this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category == null ? 'Koleksi Buku' : 'Kategori $category'),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: const [
          BookCard(
            title: 'Atomic Habits',
            image: 'images/atomic_habit.jpg',
            pages: '352 Hal',
            language: 'Indonesia',
          ),

          BookCard(
            title: 'Laskar Pelangi',
            image: 'images/laskar.jpg',
            pages: '420 Hal',
            language: 'Indonesia',
          ),

          BookCard(
            title: 'Flutter',
            image: 'images/flutter.jpg',
            pages: '250 Hal',
            language: 'Indonesia',
          ),

          BookCard(
            title: 'The Let Them Theory',
            image: 'images/letthem.jpg',
            pages: '243 Hal',
            language: 'English',
          ),

          BookCard(
            title: 'Filosofi Teras',
            image: 'images/teras.jpg',
            pages: '241 Hal',
            language: 'Indonesia',
          ),

          BookCard(
            title: 'Psychology Of Money',
            image: 'images/money.jpg',
            pages: '231 Hal',
            language: 'Indonesia',
          ),
        ],
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String image;
  final String pages;
  final String language;

  const BookCard({
    super.key,
    required this.title,
    required this.image,
    required this.pages,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),

        boxShadow: const [
          BoxShadow(blurRadius: 6, color: Colors.black12, offset: Offset(0, 3)),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Container(
            height: 350,
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

              boxShadow: const [
                BoxShadow(blurRadius: 5, color: Colors.black12),
              ],
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),

          const SizedBox(height: 20),

          Text(
            title,
            textAlign: TextAlign.center,

            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              infoBox(pages),

              const SizedBox(width: 12),

              infoBox(language),
            ],
          ),

          const SizedBox(height: 25),

          SizedBox(
            width: double.infinity,
            height: 55,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              onPressed: () {
                showDialog(
                  context: context,

                  builder: (context) => AlertDialog(
                    title: const Text('Konfirmasi Pinjam'),

                    content: Text(
                      'Apakah anda yakin ingin meminjam buku $title?',
                    ),

                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },

                        child: const Text('Batal'),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('$title berhasil dipinjam')),
                          );
                        },

                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },

              child: const Text(
                'Pinjam Buku',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget infoBox(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),

      decoration: BoxDecoration(
        color: Colors.lightBlue.shade100,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
    );
  }
}
