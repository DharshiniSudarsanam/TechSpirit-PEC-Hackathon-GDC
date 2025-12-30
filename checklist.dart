import 'package:flutter/material.dart';

class ChecklistPage extends StatelessWidget {
  const ChecklistPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = {
      "Power Bank": "Risky",
      "Medicines": "Allowed with prescription",
      "Liquids": "Not Allowed",
      "Electronics": "Safe",
    };

    return Scaffold(
      appBar: AppBar(title: const Text("Mistake Prevention Checklist")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: items.entries.map((e) {
          return ListTile(
            title: Text(e.key),
            trailing: Text(
              e.value,
              style: TextStyle(
                color: e.value.contains("Safe")
                    ? Colors.green
                    : e.value.contains("Risky")
                        ? Colors.orange
                        : Colors.red,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
