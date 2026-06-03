import 'package:flutter/material.dart';

// HomeScreen shows two simple ListViews: one vertical, one horizontal.
// We use the plain ListView() constructor with children, not ListView.builder.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Demo'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),

      // A simple vertical ListView that holds all our content.
      body: ListView(
        // PROP 1: scrollDirection. Default is Axis.vertical (top to bottom).
        scrollDirection: Axis.vertical,

        // PROP 2: padding. Adds space around the list content.
        padding: EdgeInsets.all(16),

        // children: widgets are listed directly
        children: [
          Text('Inbox', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),

          ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('Towi Iji'), subtitle: Text('Project update')),
          ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('Ibrahim Djahadi'), subtitle: Text('Meeting at 3 PM')),
          ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('Larry Sentore'), subtitle: Text('Invoice attached')),
                    ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('Joshua Agonzibwa'), subtitle: Text('Invoice attached')),
          ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('Harmony Niyongabo'), subtitle: Text('Invoice attached')),
          ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('Sedem Amuzu'), subtitle: Text('Invoice attached')),
          ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('John Doe'), subtitle: Text('Invoice attached')),
          ListTile(leading: Icon(Icons.email, color: Colors.teal), title: Text('Jane Doe'), subtitle: Text('Invoice attached')),


          SizedBox(height: 24),
          Text('Featured Products', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),

          // A horizontal ListView needs a bounded height, so we wrap it in SizedBox.
          SizedBox(
            height: 120,
            child: ListView(
              // PROP 1 again: switch the scroll axis to horizontal (left to right).
              scrollDirection: Axis.horizontal,
              children: [
                _productCard('🎧', 'Headphones'),
                _productCard('👟', 'Sneakers'),
                _productCard('⌚', 'Watch'),
                _productCard('🎒', 'Backpack'),
                _productCard('📷', 'Camera'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper that builds one simple product card.
  Widget _productCard(String emoji, String name) {
    return Container(
      width: 110,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.teal),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(emoji, style: TextStyle(fontSize: 36)),
          SizedBox(height: 8),
          Text(name, style: TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}