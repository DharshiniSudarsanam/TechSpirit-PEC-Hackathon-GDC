import 'package:flutter/material.dart';
import 'rules.dart';

class OverviewPage extends StatelessWidget {
  final String country;
  final String purpose;

  const OverviewPage({super.key, required this.country, required this.purpose});

  @override
  Widget build(BuildContext context) {
    final data = rulesData[country]?[purpose];

    return Scaffold(
      appBar: AppBar(title: const Text("Country Overview")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Country: $country", style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            Text("Purpose: $purpose"),
            const SizedBox(height: 20),
            Text("Currency: ${data?["overview"]?["currency"] ?? "N/A"}"),
            const SizedBox(height: 10),
            Text("Emergency Number: ${data?["overview"]?["emergency"] ?? "N/A"}"),
          ],
        ),
      ),
    );
  }
}
