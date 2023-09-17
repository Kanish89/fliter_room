import 'package:flutter/material.dart';

void main() => runApp(const RoomBookingApp());

class RoomBookingApp extends StatelessWidget {
  const RoomBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RoomFilterScreen(),
    );
  }
}

class RoomFilterScreen extends StatefulWidget {
  const RoomFilterScreen({super.key});

  @override
  _RoomFilterScreenState createState() => _RoomFilterScreenState();
}

class _RoomFilterScreenState extends State<RoomFilterScreen> {
  double maxPrice = 1000.0;
  double maxDistance = 50.0;
  double minRating = 3.0;

  void applyFilters() {
    // Implement filtering logic based on selected filters
    // For demonstration purposes, we'll just print the selected filters
    print('Price: $maxPrice');
    print('Distance: $maxDistance');
    print('Minimum Rating: $minRating');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Room Filters'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              applyFilters();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Max Price: \$${maxPrice.toStringAsFixed(2)}'),
                Slider(
                  value: maxPrice,
                  min: 0,
                  max: 2000,
                  onChanged: (value) {
                    setState(() {
                      maxPrice = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Max Distance: ${maxDistance.toStringAsFixed(1)} miles'),
                Slider(
                  value: maxDistance,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      maxDistance = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Min Rating: $minRating stars'),
                Slider(
                  value: minRating,
                  min: 0,
                  max: 5,
                  onChanged: (value) {
                    setState(() {
                      minRating = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
