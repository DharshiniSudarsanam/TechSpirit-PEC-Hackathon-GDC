import 'package:flutter/material.dart';
import 'before_departure.dart';
import 'after_arrival.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String country = "Germany";
  String purpose = "Tourism";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              value: country,
              items: const [
                DropdownMenuItem(value: "Germany", child: Text("Germany")),
                DropdownMenuItem(value: "UAE", child: Text("UAE")),
                DropdownMenuItem(value: "Japan", child: Text("Japan")),
              ],
              onChanged: (v) => setState(() => country = v!),
            ),
            const SizedBox(height: 16),
            DropdownButton<String>(
              value: purpose,
              items: const [
                DropdownMenuItem(value: "Tourism", child: Text("Tourism")),
                DropdownMenuItem(value: "Work", child: Text("Work")),
                DropdownMenuItem(value: "Study", child: Text("Study")),
                DropdownMenuItem(value: "Business", child: Text("Business")),
              ],
              onChanged: (v) => setState(() => purpose = v!),
            ),
            const SizedBox(height: 40),
            buildButton(
              text: "Before Departure",
              color: const Color(0xFF22C55E),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        BeforeDeparturePage(country: country, purpose: purpose),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            buildButton(
              text: "After Arrival",
              color: const Color(0xFFF59E0B),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        AfterArrivalPage(country: country, purpose: purpose),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(
      {required String text,
      required Color color,
      required VoidCallback onTap}) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        ),
        onPressed: onTap,
        child: Text(text, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
