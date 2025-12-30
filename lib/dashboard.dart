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
            DropdownMenu<String>(
              initialSelection: country,
              label: const Text("Select Country"),
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: "Germany", label: "Germany"),
                DropdownMenuEntry(value: "UAE", label: "UAE"),
                DropdownMenuEntry(value: "Japan", label: "Japan"),
              ],
              onSelected: (v) => setState(() => country = v!),
            ),
            const SizedBox(height: 16),
            DropdownMenu<String>(
              initialSelection: purpose,
              label: const Text("Select Purpose"),
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: "Tourism", label: "Tourism"),
                DropdownMenuEntry(value: "Work", label: "Work"),
                DropdownMenuEntry(value: "Study", label: "Study"),
                DropdownMenuEntry(value: "Business", label: "Business"),
              ],
              onSelected: (v) => setState(() => purpose = v!),
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
