import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  final String nbi;
  final String email;
  final String alamat;
  final String instagram;

  const ProfilePage({
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Profile',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            CircleAvatar(
              radius: 60,
              backgroundImage: const AssetImage('images/profile.jpg'),
            ),

            const SizedBox(height: 30),

            Text(
              '$nama',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text('$nbi', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 10),

            Text('$email', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 10),

            Text('$alamat', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 10),

            Text('$instagram', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 40),

            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(120),
                  topRight: Radius.circular(120),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
