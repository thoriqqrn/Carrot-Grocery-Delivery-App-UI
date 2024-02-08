import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
        child: Column(children: [
          const SizedBox(height: 32),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Register",
              style: GoogleFonts.notoSans(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Email", contentPadding: EdgeInsets.only(bottom: 8)),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Password",
                contentPadding: EdgeInsets.only(bottom: 8)),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Verify Password",
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
                  "Register",
                  style: GoogleFonts.notoSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "By creating an account, you are agreeing to our",
            style: GoogleFonts.notoSans(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  modalTerms(context);
                },
                child: Text(
                  "Terms of Service ",
                  style: GoogleFonts.notoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF52CC6D),
                  ),
                ),
              ),
              Text(
                "and ",
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  modalPrivacy(context);
                },
                child: Text(
                  "Privacy Policy",
                  style: GoogleFonts.notoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF52CC6D),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  Future<dynamic> modalTerms(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Terms of Service",
            style: GoogleFonts.notoSans(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF121212),
            ),
            textAlign: TextAlign.center,
          ),
          content: const Text("Ini adalah halaman Syarat dan Ketentuan."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup pop-up
              },
              child: const Text(
                "Tutup",
                style: TextStyle(
                  color: Color(0xFF52CC6D),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<dynamic> modalPrivacy(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Privacy Policy",
            style: GoogleFonts.notoSans(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF121212),
            ),
            textAlign: TextAlign.center,
          ),
          content: const Text("Ini adalah halaman Privacy Policy."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Menutup pop-up
              },
              child: const Text(
                "Tutup",
                style: TextStyle(
                  color: Color(0xFF52CC6D),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
