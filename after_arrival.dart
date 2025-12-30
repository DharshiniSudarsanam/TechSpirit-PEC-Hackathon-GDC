import 'package:flutter/material.dart';
import 'rules.dart';

class AfterArrivalPage extends StatelessWidget {
  final String country;
  final String purpose;

  const AfterArrivalPage({
    super.key,
    required this.country,
    required this.purpose,
  });

  /// Extended country overview
  static const Map<String, Map<String, dynamic>> countryOverview = {
    "Germany": {
      "currency": "Euro (EUR)",
      "rate": "1 EUR ≈ ₹90",
      "emergency": "Police / Ambulance: 112",
      "tips": [
        "Public transport is highly reliable",
        "Cash is still preferred in small shops",
        "Strictly follow traffic signals",
      ],
      "touristPlaces": [
        "Brandenburg Gate",
        "Neuschwanstein Castle",
        "Berlin Wall Memorial",
        "Cologne Cathedral",
      ],
    },
    "Japan": {
      "currency": "Yen (JPY)",
      "rate": "100 JPY ≈ ₹56",
      "emergency": "Police: 110, Ambulance: 119",
      "tips": [
        "Carry cash – cards not accepted everywhere",
        "Follow queue discipline strictly",
        "Dispose waste responsibly",
      ],
      "touristPlaces": [
        "Mount Fuji",
        "Tokyo Skytree",
        "Kyoto Temples",
        "Osaka Castle",
      ],
    },
    "UAE": {
      "currency": "Dirham (AED)",
      "rate": "1 AED ≈ ₹22",
      "emergency": "Police: 999, Ambulance: 998",
      "tips": [
        "Dress modestly in public places",
        "Avoid public displays of affection",
        "Respect local laws strictly",
      ],
      "touristPlaces": [
        "Burj Khalifa",
        "Dubai Mall",
        "Palm Jumeirah",
        "Sheikh Zayed Grand Mosque",
      ],
    },
  };

  @override
  Widget build(BuildContext context) {
    final data = rulesData[country]?[purpose];
    final overview = countryOverview[country];

    if (data == null || overview == null) {
      return Scaffold(
        appBar: AppBar(title: const Text("After Arrival")),
        body: const Center(child: Text("No data available")),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("After Arrival"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// 🔹 COUNTRY OVERVIEW
            _sectionTitle("Country Overview"),

            _infoCard("Currency Used", overview["currency"]),
            _infoCard("Currency Conversion", overview["rate"]),
            _infoCard("Emergency Numbers", overview["emergency"]),

            const SizedBox(height: 16),

            _sectionTitle("Local Tips"),
            _listCard(overview["tips"], Icons.info, Colors.blue),

            const SizedBox(height: 24),

            /// 🔹 CULTURAL RULES
            _sectionTitle("Cultural & Behavioral Rules"),
            _listCard(data["culture"], Icons.public, Colors.purple),

            const SizedBox(height: 20),

            /// 🔹 BANNED APPS
            _sectionTitle("Banned / Restricted Apps"),
            _listCard(data["bannedApps"], Icons.block, Colors.redAccent),

            const SizedBox(height: 24),

            /// 🔹 TOURIST PLACES (NEW)
            _sectionTitle("Popular Tourist Places"),
            _listCard(
              overview["touristPlaces"],
              Icons.place,
              Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  /// ---------- UI HELPERS ----------

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _listCard(List items, IconData icon, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withAlpha(25),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: items
            .map(
              (e) => ListTile(
                leading: Icon(icon, color: color),
                title: Text(
                  e,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _infoCard(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha(20),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Icon(Icons.info_outline),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(value, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
