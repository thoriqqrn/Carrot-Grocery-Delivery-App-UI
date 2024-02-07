import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SvgPicture.asset("lib/images/login.svg"),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Login",
                style: GoogleFonts.notoSans(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Email",
                  contentPadding: EdgeInsets.only(bottom: 8)),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Password",
                  contentPadding: EdgeInsets.only(bottom: 8)),
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot password?",
                style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF52CC6D)),
              ),
            ),
            const SizedBox(height: 18),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF52CC6D),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    "Login",
                    style: GoogleFonts.notoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
            ),
            const SizedBox(height: 18),
            
          ],
        ),
      ),
    );
  }
}
