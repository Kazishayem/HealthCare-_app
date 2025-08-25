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
        child: SingleChildScrollView(
          // ✅ scrollable to avoid overflow
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
                children: [
                  Expanded(
                    child: _metricCard(
                      title: 'Heart Rate',
                      value: '78',
                      unit: 'bpm',
                      icon: Icons.favorite,
                      color: const Color(0xFFFFE0E9), // ✅ light pink
                      iconColor: Colors.pink,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _metricCard(
                      title: 'Exercise',
                      value: '24',
                      unit: 'min',
                      icon: Icons.flash_on,
                      color: const Color(0xFFEDE7F6), // ✅ light purple
                      iconColor: Colors.purple,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Cards row 2
              Row(
                children: [
                  Expanded(
                    child: _metricCard(
                      title: 'Walking',
                      value: '10',
                      unit: 'km',
                      icon: Icons.directions_walk,
                      color: const Color(0xFFE0F7F4), // ✅ soft teal
                      iconColor: Colors.teal,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _metricCard(
                      title: 'Sleep',
                      value: '8',
                      unit: 'hrs',
                      icon: Icons.nights_stay,
                      color: const Color(0xFFE3F2FD), // ✅ soft blue
                      iconColor: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Cards row 3
              Row(
                children: [
                  Expanded(
                    child: _metricCard(
                      title: 'Calories',
                      value: '220',
                      unit: 'kcal',
                      icon: Icons.local_fire_department,
                      color: const Color(0xFFFFF3E0), // ✅ light orange
                      iconColor: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: _metricCard(
                      title: 'Water',
                      value: '2',
                      unit: 'L',
                      icon: Icons.water_drop,
                      color: const Color(0xFFE0F7FA), // ✅ aqua blue
                      iconColor: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Show Doctor List button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/doctorlist');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade200,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
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

      // Center FAB (lowered a bit)
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 20), // ✅ নিচে নামানো হলো
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  // Metric Card Widget
  Widget _metricCard({
    required String title,
    required String value,
    required String unit,
    required IconData icon,
    required Color color,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            // ✅ subtle shadow for better contrast
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(2, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: iconColor, size: 28),
          const SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '$value $unit',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
