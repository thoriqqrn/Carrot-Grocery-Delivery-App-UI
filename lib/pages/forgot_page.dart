import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            weight: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Forgot Password",
                style: GoogleFonts.notoSans(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Email",
                  contentPadding: EdgeInsets.only(bottom: 8)),
            ),
            const SizedBox(height: 32),
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
                    "Reset Password",
                    style: GoogleFonts.notoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
