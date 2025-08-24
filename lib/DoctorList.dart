import 'package:flutter/material.dart';
import 'package:healthcare/HealthOpenPage.dart';
// 👇 HealthOpenPage demo (tomar asol page diye replace koro)
// class HealthOpenPage extends StatelessWidget {
//   const HealthOpenPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("Welcome to HealthOpenPage",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//       ),
//     );
//   }
// }

class Doctor {
  final String name;
  final String specialization;
  final String hospital;
  final String reviews;
  final int rating;
  final String imagePath;

  Doctor({
    required this.name,
    required this.specialization,
    required this.hospital,
    required this.reviews,
    required this.rating,
    required this.imagePath,
  });
}

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    // Doctor list data
    final List<Doctor> doctors = [
      Doctor(
        name: "Dr. Krystal Jung",
        specialization: "Health",
        hospital: "A.J. Hospital, DA Washington",
        reviews: "124 Reviews",
        rating: 5,
        imagePath: "assets/images/doc1.png",
      ),
      Doctor(
        name: "Dr. Bae Johyun",
        specialization: "Health",
        hospital: "A.J. Hospital, DA Washington",
        reviews: "124 Reviews",
        rating: 5,
        imagePath: "assets/images/doc2.png",
      ),
      Doctor(
        name: "Dr. Stefannie",
        specialization: "Health",
        hospital: "A.J. Hospital, DA Washington",
        reviews: "124 Reviews",
        rating: 5,
        imagePath: "assets/images/doc3.png",
      ),
      Doctor(
        name: "Dr. Minseo Park",
        specialization: "Cardiologist",
        hospital: "Seoul Medical Center",
        reviews: "98 Reviews",
        rating: 4,
        imagePath: "assets/images/doc1.png",
      ),
      Doctor(
        name: "Dr. John Smith",
        specialization: "Neurologist",
        hospital: "New York General Hospital",
        reviews: "210 Reviews",
        rating: 5,
        imagePath: "assets/images/doc2.png",
      ),
      Doctor(
        name: "Dr. Ayesha Rahman",
        specialization: "Dermatologist",
        hospital: "Dhaka Apollo Hospital",
        reviews: "150 Reviews",
        rating: 4,
        imagePath: "assets/images/doc3.png",
      ),
      Doctor(
        name: "Dr. Carlos Mendes",
        specialization: "Orthopedic",
        hospital: "São Paulo Health Institute",
        reviews: "87 Reviews",
        rating: 4,
        imagePath: "assets/images/doc1.png",
      ),
      Doctor(
        name: "Dr. Emily Carter",
        specialization: "Pediatrician",
        hospital: "London Children’s Hospital",
        reviews: "300 Reviews",
        rating: 5,
        imagePath: "assets/images/doc3.png",
      ),
      Doctor(
        name: "Dr. Ahmed Hassan",
        specialization: "ENT Specialist",
        hospital: "Cairo Medical College Hospital",
        reviews: "120 Reviews",
        rating: 4,
        imagePath: "assets/images/doc2.png",
      ),
      Doctor(
        name: "Dr. Sophia Lee",
        specialization: "Gynecologist",
        hospital: "Singapore General Hospital",
        reviews: "176 Reviews",
        rating: 5,
        imagePath: "assets/images/doc1.png",
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade50,
        centerTitle: true,
        title: const Text(
          "Doctor List",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.black54),
            onSelected: (value) {
              if (value == 'logout') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HealthOpenPage()),
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'logout',
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.red),
                      SizedBox(width: 8),
                      Text("Logout"),
                    ],
                  ),
                ),
              ];
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              DoctorCard(doctor: doctors[index]),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Doctor image
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            doctor.imagePath,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        // Info card
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(doctor.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(
                  doctor.specialization,
                  style: TextStyle(color: Colors.blue.shade400, fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(doctor.hospital,
                    style:
                        const TextStyle(color: Colors.black54, fontSize: 12)),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Row(
                      children: List.generate(
                        doctor.rating,
                        (index) => const Icon(Icons.star,
                            size: 16, color: Colors.amber),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text("(${doctor.reviews})",
                        style: const TextStyle(
                            fontSize: 12, color: Colors.black54)),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 16),
                    Icon(Icons.email, color: Colors.blue),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
