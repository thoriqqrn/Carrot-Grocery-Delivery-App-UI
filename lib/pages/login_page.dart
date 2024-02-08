import 'package:carrot/pages/forgot_page.dart';
import 'package:carrot/pages/register_page.dart';
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
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Image.asset("lib/images/login.png",
                alignment: Alignment.bottomRight),
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgotPage()));
                },
                child: Text(
                  "Forgot password?",
                  style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF52CC6D)),
                ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 130,
                    height: 1,
                    color: Colors.black.withOpacity(0.5)),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "or",
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                    width: 130,
                    height: 1,
                    color: Colors.black.withOpacity(0.5)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset("lib/images/google.svg"),
                const SizedBox(width: 50),
                SvgPicture.asset("lib/images/fb.svg")
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account? ",
                  style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    "Create One",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF52CC6D)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
