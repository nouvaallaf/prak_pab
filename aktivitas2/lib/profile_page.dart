import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'), centerTitle: true),

      body: Center(
        child: SingleChildScrollView(
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

              const SizedBox(height: 20),

              const Text('Teknik Informatika', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
