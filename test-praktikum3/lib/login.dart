import 'package:flutter/material.dart';
import 'library_screen.dart';

class LoginPage extends StatelessWidget {
  final String nama;
  final String nbi;
  final String email;
  final String alamat;
  final String instagram;

  const LoginPage({
    super.key,
    required this.nama,
    required this.nbi,
    required this.email,
    required this.alamat,
    required this.instagram,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page'), centerTitle: true),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const Text('PRAKTIKUM PAB 2023', style: TextStyle(fontSize: 20)),

            const SizedBox(height: 40),

            Text(
              '$nbi',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 50),

            Image.asset('images/profile.jpg', width: 200, height: 200),

            const SizedBox(height: 50),

            Text(
              '$nama',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 80),

            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LibraryScreen(
                        nama: nama,
                        nbi: nbi,
                        email: email,
                        alamat: alamat,
                        instagram: instagram,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Masuk',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
