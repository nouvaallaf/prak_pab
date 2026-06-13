import 'package:flutter/material.dart';
import 'library_screen.dart';

class PinPage extends StatefulWidget {
  final String nama;
  final String nbi;
  final String email;
  final String alamat;
  final String instagram;
  final String pin;

  const PinPage({
    super.key,
    required this.nama,
    required this.nbi,
    required this.email,
    required this.alamat,
    required this.instagram,
    required this.pin,
  });

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController();

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
              'Please enter your pin that you have created',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            const Icon(Icons.lock_outline, color: Colors.red, size: 60),

            const SizedBox(height: 30),

            SizedBox(
              width: 180,
              child: TextField(
                controller: pinController,
                obscureText: true,
                keyboardType: TextInputType.number,
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
                  if (pinController.text == widget.pin) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LibraryScreen(
                          nama: widget.nama,
                          nbi: widget.nbi,
                          email: widget.email,
                          alamat: widget.alamat,
                          instagram: widget.instagram,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('PIN Salah'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
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
