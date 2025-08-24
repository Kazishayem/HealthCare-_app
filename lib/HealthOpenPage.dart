import 'package:flutter/material.dart';
import 'package:healthcare/AppColors.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthOpenPage extends StatelessWidget {
  const HealthOpenPage({super.key});

  // ignore: non_constant_identifier_names
  void GuestButton() {}

  // ignore: non_constant_identifier_names
  void FacebookButton() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 500,
              width: 350,
              child: ListView(
                children: [
                  Column(
                    children: [Image.asset("assets/images/first_page.png")],
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   "Welcome to\nHealthCare App",
                  //   style: GoogleFonts.poppins(
                  //     fontSize: 35,
                  //     fontWeight: FontWeight.bold,
                  //     color: AppColors.text_color,
                  //   ),
                  //   textAlign: TextAlign.left,
                  // ),
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
                          style: TextStyle(
                              color: const Color.fromARGB(255, 224, 161, 193)),
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
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: GuestButton,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(224, 208, 212, 1),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                  color: Colors.grey,
                                )),
                            minimumSize: const Size(130, 50),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                          ),
                          child: Text(
                            "Guest",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          )),
                      const SizedBox(width: 30),
                      ElevatedButton(
                          onPressed: FacebookButton,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(224, 208, 212, 1),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                  color: Colors.grey,
                                )),
                            minimumSize: const Size(130, 50),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                          ),
                          child: Text(
                            "Facebook",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 7),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding:
                    const EdgeInsets.only(right: 55), // 👈 right থেকে 16px gap
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  child: const Icon(Icons.arrow_right_alt, size: 35),
                ),
              ),
            )
          ],
        ),
      ),

      // appBar: AppBar(
      //   title: Text("data", style: TextStyle(color: AppColors.border_color)),
    );
  }
}
