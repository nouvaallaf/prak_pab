import 'package:flutter/material.dart';
import 'library_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required String title});

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

            const Text(
              '1462300132',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 50),

            Image.asset('images/profile.jpg', width: 200, height: 200),

            const SizedBox(height: 50),

            const Text(
              'Nouval Abdullah Farouq',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
                      builder: (context) => const LibraryScreen(),
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
