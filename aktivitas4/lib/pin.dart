import 'package:flutter/material.dart';
import 'library_screen.dart';

class PinPage extends StatelessWidget {
  final String nama;
  final String nbi;
  final String email;
  final String alamat;
  final String instagram;

  const PinPage({
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
      appBar: AppBar(title: const Text('PIN Verification'), centerTitle: true),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter your PIN',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              'Please enter your pin that you have\ncreated',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            const Icon(Icons.lock_outline, color: Colors.red, size: 60),

            const SizedBox(height: 30),

            SizedBox(
              width: 180,
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'PIN',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: 100,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
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
                child: const Icon(Icons.lock_outline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
