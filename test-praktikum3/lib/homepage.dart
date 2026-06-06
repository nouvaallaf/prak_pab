import 'package:flutter/material.dart';
import 'book.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perpustakaan Digital'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child: Image.asset(
                    'images/library.jpg',
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Container(
                  height: 220,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),

                    color: Colors.black.withOpacity(0.4),
                  ),
                ),

                const Positioned(
                  left: 20,
                  bottom: 20,

                  child: Text(
                    'Ruang Baca Digital',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,

                children: [
                  kategoriCard(context, Icons.auto_stories, 'Fiksi'),

                  kategoriCard(context, Icons.computer, 'Teknologi'),

                  kategoriCard(context, Icons.science, 'Sains'),

                  kategoriCard(context, Icons.public, 'Sejarah'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kategoriCard(BuildContext context, IconData icon, String title) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BooksPage(category: title)),
        );
      },

      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade50,
          borderRadius: BorderRadius.circular(20),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(icon, size: 60, color: Colors.deepPurple),

            const SizedBox(height: 15),

            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
