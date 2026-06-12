import 'package:flutter/material.dart';
import 'login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final namaController = TextEditingController();
  final nbiController = TextEditingController();
  final emailController = TextEditingController();
  final alamatController = TextEditingController();
  final instagramController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),

              Image.asset('images/register.jpg', width: 180, height: 180),

              const Text(
                'WELCOME',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              const Text(
                'Pendaftaran Anggota Perpustakaan',
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 30),

              TextField(
                controller: namaController,
                decoration: InputDecoration(
                  hintText: 'Masukan Nama',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: nbiController,
                decoration: InputDecoration(
                  hintText: 'Masukan NBI',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Masukan Email',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: alamatController,
                decoration: InputDecoration(
                  hintText: 'Masukan Alamat',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: instagramController,
                decoration: InputDecoration(
                  hintText: 'Masukan Akun Instagram',
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(
                          nama: namaController.text,
                          nbi: nbiController.text,
                          email: emailController.text,
                          alamat: alamatController.text,
                          instagram: instagramController.text,
                        ),
                      ),
                    );
                  },
                  child: const Text('Daftar', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
