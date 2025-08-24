import 'package:flutter/material.dart';
import 'package:healthcare/AppColors.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthOpenPage extends StatelessWidget {

  const HealthOpenPage({super.key });

  
 

  void GuestButton() {}
  void FacebookButton() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight, // ✅ full screen fillup
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // 🔹 Top Image
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: Image.asset(
                            "assets/images/first_page.png",
                            height: 400,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      // 🔹 Middle Texts
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              textAlign: TextAlign.left,
                              text: TextSpan(
                                style: GoogleFonts.poppins(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.text_color,
                                ),
                                children: [
                                  const TextSpan(text: "Welcome to\n"),
                                  TextSpan(
                                    text: "HealthCare",
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 224, 161, 193),
                                    ),
                                  ),
                                  const TextSpan(text: " App"),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              "Track Your Active Lifestyle",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: AppColors.text_color,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 🔹 Bottom Buttons + FAB
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // ✅ left align
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.start, // ✅ left start
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: GuestButton,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(224, 208, 212, 1),
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                          const BorderSide(color: Colors.grey),
                                    ),
                                    minimumSize: const Size(130, 50),
                                  ),
                                  child: Text(
                                    "Guest",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 30),
                                ElevatedButton(
                                  onPressed: FacebookButton,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromRGBO(224, 208, 212, 1),
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                          const BorderSide(color: Colors.grey),
                                    ),
                                    minimumSize: const Size(130, 50),
                                  ),
                                  child: Text(
                                    "Facebook",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Align(
                              alignment: Alignment.centerRight,
                              child: FloatingActionButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/registration');
                                },
                                shape: const CircleBorder(),
                                child:
                                    const Icon(Icons.arrow_right_alt, size: 35),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
