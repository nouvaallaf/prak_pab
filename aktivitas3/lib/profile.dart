import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.blue.shade50,
              alignment: Alignment.center,
              child: const Text(
                'Profile',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            Image.asset('images/profile.jpg', width: 120, height: 120),

            const SizedBox(height: 20),

            const Text(
              'Praktikum',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('PAB 2026', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 15),

            const Text(
              'Phone',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('087820050321', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 15),

            const Text(
              'Email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              'contact.nouvalfarouq@gmail.com',
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 15),

            const Text(
              'Lokasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('Kota Surabaya', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 15),

            const Text(
              'Instagram',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('nouvaallaf', style: TextStyle(fontSize: 16)),

            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              height: 150,
              color: Colors.blue.shade50,
            ),
          ],
        ),
      ),
    );
  }
}
