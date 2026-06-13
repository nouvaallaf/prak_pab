import 'package:flutter/material.dart';
import 'homepage.dart';
import 'book.dart';
import 'profile.dart';

class LibraryScreen extends StatefulWidget {
  final String nama;
  final String nbi;
  final String email;
  final String alamat;
  final String instagram;

  const LibraryScreen({
    super.key,
    required this.nama,
    required this.nbi,
    required this.email,
    required this.alamat,
    required this.instagram,
  });

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  int currentIndex = 0;

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();

    pages = [
      const HomePage(),
      const BooksPage(),
      ProfilePage(
        nama: widget.nama,
        nbi: widget.nbi,
        email: widget.email,
        alamat: widget.alamat,
        instagram: widget.instagram,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.deepPurple,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Books'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
