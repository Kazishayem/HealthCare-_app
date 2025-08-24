import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthDetails extends StatelessWidget {
  final String email;
  final String password;

  const HealthDetails({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              const SizedBox(height: 10),

              // Greeting
              Text(
                'Hello,',
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.black87),
              ),
              Text(
                'Shayem',
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),

              // Subtext
              Row(
                children: [
                  const Icon(Icons.info_outline,
                      size: 16, color: Colors.orange),
                  const SizedBox(width: 5),
                  Text(
                    'Your Activity',
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Date + refresh
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3 days ago',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Colors.black54),
                  ),
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Cards row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _metricCard(
                      title: 'Heart Rate',
                      value: '78',
                      unit: 'bpm',
                      icon: Icons.favorite,
                      color: Colors.pink.shade100,
                      iconColor: Colors.pink),
                  _metricCard(
                      title: 'Exercise',
                      value: '24',
                      unit: 'min',
                      icon: Icons.flash_on,
                      color: Colors.purple.shade100,
                      iconColor: Colors.purple),
                ],
              ),
              const SizedBox(height: 20),

              // Cards row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _metricCard(
                      title: 'Walking',
                      value: '10',
                      unit: 'km',
                      icon: Icons.directions_walk,
                      color: Colors.teal.shade100,
                      iconColor: Colors.teal),
                  _metricCard(
                      title: 'Sleep',
                      value: '8',
                      unit: 'hrs',
                      icon: Icons.nights_stay,
                      color: Colors.blue.shade100,
                      iconColor: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _metricCard(
                      title: 'Walking',
                      value: '10',
                      unit: 'km',
                      icon: Icons.directions_walk,
                      color: Colors.teal.shade100,
                      iconColor: Colors.teal),
                  _metricCard(
                      title: 'Sleep',
                      value: '8',
                      unit: 'hrs',
                      icon: Icons.nights_stay,
                      color: Colors.blue.shade100,
                      iconColor: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),

              // Show Doctor List button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/doctorlist');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade50,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    'Show Doctor List',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom navigation
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: const Icon(Icons.grid_view), onPressed: () {}),
              IconButton(icon: const Icon(Icons.show_chart), onPressed: () {}),
              const SizedBox(width: 40), // space for FAB
              IconButton(
                  icon: const Icon(Icons.notifications), onPressed: () {}),
              IconButton(icon: const Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),

      // Center FAB
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  // Metric Card Widget
  Widget _metricCard(
      {required String title,
      required String value,
      required String unit,
      required IconData icon,
      required Color color,
      required Color iconColor}) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(height: 10),
          Text(title,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          Text('$value $unit',
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
        ],
      ),
    );
  }
}
