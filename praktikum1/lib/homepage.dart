import 'package:flutter/material.dart';
import 'detail_buku.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
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
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black.withOpacity(0.4),
                    ),
                  ),

                  const Positioned(
                    left: 20,
                    bottom: 20,
                    child: Text(
                      'Ruang Baca Digital\nPinjam Buku Secara Gratis',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 35),

              kategoriButton(context, 'Fiksi & Novel', null),

              kategoriButton(context, 'Teknologi & IT', null),

              kategoriButton(context, 'Self Improvement', const DetailBuku()),

              kategoriButton(context, 'Sejarah Dunia', null),
            ],
          ),
        ),
      ),
    );
  }

  Widget kategoriButton(BuildContext context, String title, Widget? page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.deepPurple, width: 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          onPressed: () {
            if (page != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            }
          },

          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
