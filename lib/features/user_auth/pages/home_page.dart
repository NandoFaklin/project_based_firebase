import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              _handleLogout(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to Home Page'),
      ),
    );
  }
}

Future<void> _handleLogout(BuildContext context) async {
  try {
    await FirebaseAuth.instance.signOut();
    // Navigasi ke halaman login setelah logout
    Navigator.pushReplacementNamed(context, "/login"); // Ganti dengan rute halaman login yang sesuai
  } catch (e) {
    print("Error during logout: $e");
    // Tampilkan pesan kesalahan jika diperlukan
  }
}

