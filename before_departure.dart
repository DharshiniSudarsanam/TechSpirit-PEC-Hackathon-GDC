import 'package:flutter/material.dart';
import 'rules.dart';

class BeforeDeparturePage extends StatefulWidget {
  final String country;
  final String purpose;

  const BeforeDeparturePage({
    super.key,
    required this.country,
    required this.purpose,
  });

  @override
  State<BeforeDeparturePage> createState() => _BeforeDeparturePageState();
}

class _BeforeDeparturePageState extends State<BeforeDeparturePage> {
  final Map<String, bool> checklist = {
    "Power Bank": false,
    "Medicines": false,
    "Liquids": false,
    "Electronics": false,
  };

  final Map<String, bool> documentStatus = {};

  @override
  Widget build(BuildContext context) {
    final data = rulesData[widget.country]?[widget.purpose];

    if (data == null) {
      return Scaffold(
        appBar: AppBar(title: const Text("Before Departure")),
        body: const Center(child: Text("No data available")),
      );
    }

    for (var doc in data["documents"]) {
      documentStatus.putIfAbsent(doc, () => false);
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Before Departure"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

          /// 🔥 TRAVEL CONFIDENCE METER
          _sectionTitle("Travel Readiness"),
          LinearProgressIndicator(
            value: _confidenceScore(data),
            minHeight: 10,
            backgroundColor: Colors.grey.shade300,
            color: Colors.green,
          ),
          const SizedBox(height: 24),

          /// 🚨 SMART ALERTS
          _sectionTitle("Smart Alerts"),
          _alertCard(data["smartAlerts"]),

          /// ❌ COMMON MISTAKES
          _sectionTitle("Common Travel Mistakes"),
          _mistakeCard(data["commonMistakes"]),

          const SizedBox(height: 24),

          /// 📄 DOCUMENT VALIDATION
          _sectionTitle("Document Verification"),
          ...documentStatus.keys.map(_documentTile),

          const SizedBox(height: 24),

          /// 🧳 CHECKLIST
          _sectionTitle("Mistake Prevention Checklist"),
          ...checklist.keys.map(_checklistTile),
        ]),
      ),
    );
  }

  // ---------- HELPERS ----------

  double _confidenceScore(dynamic data) {
    int checkedDocs = documentStatus.values.where((v) => v).length;
    int totalDocs = documentStatus.length;
    return totalDocs == 0 ? 0 : checkedDocs / totalDocs;
  }

  Widget _sectionTitle(String title) => Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Text(title, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
  );

  Widget _alertCard(List alerts) => _listCard(alerts, Colors.redAccent);
  Widget _mistakeCard(List mistakes) => _listCard(mistakes, Colors.orange);

  Widget _listCard(List items, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withAlpha(25),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: items.map((e) => ListTile(
          leading: Icon(Icons.warning, color: color),
          title: Text(e, style: const TextStyle(fontSize: 16)),
        )).toList(),
      ),
    );
  }

  Widget _documentTile(String doc) {
    return CheckboxListTile(
      title: Text(doc),
      value: documentStatus[doc],
      onChanged: (v) => setState(() => documentStatus[doc] = v!),
      subtitle: Text(
        documentStatus[doc]! ? "Verified" : "Missing",
        style: TextStyle(
          color: documentStatus[doc]! ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _checklistTile(String item) {
    return CheckboxListTile(
      title: Text(item),
      value: checklist[item],
      onChanged: (v) => setState(() => checklist[item] = v!),
      subtitle: Text(
        checklist[item]! ? "Safe" : "Not Checked",
        style: TextStyle(
          color: checklist[item]! ? Colors.green : Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
