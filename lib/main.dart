import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(const BeforeYouGoApp());
}

class BeforeYouGoApp extends StatelessWidget {
  const BeforeYouGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BeforeYouGo',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F172A),
        fontFamily: 'Roboto',
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.flight_takeoff,
                size: 90, color: Color(0xFF38BDF8)),
            const SizedBox(height: 30),
            const Text(
              "BeforeYouGo",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              "Know the rules before you cross borders.",
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF38BDF8),
                foregroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DashboardPage()),
                );
              },
              child: const Text("Get Started", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}