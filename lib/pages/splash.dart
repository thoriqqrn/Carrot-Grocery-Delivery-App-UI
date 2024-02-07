import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carrot/pages/login_page.dart'; // Import LoginPage

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delay for 3 seconds and then navigate to LoginPage
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: 100,
              height: 100,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 20,
                    offset: Offset(4, 8),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: SvgPicture.asset(
                "lib/images/logo.svg",
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Carrot",
              style: GoogleFonts.ubuntu(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF534F70),
                letterSpacing: -0.30,
              ),
            ),
            Text(
              "Your Grocery Market",
              style: GoogleFonts.ubuntu(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF534F70),
                letterSpacing: -0.30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
