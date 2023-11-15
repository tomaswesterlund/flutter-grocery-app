import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Logo
        Padding(
          padding: const EdgeInsets.only(
              left: 80.0, right: 80.0, top: 80.0, bottom: 120.0),
          child: Image.asset('lib/images/avocado.png'),
        ),

        // We deliver groceries to your doorstep
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            'We deliever groceries at your doorstep',
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(
          height: 24.0,
        ),

        // Fresh items everyday
        Text(
          'Fresh items everyday',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),

        const Spacer(),

        // Get started button

        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(24.0),
            child: const Text(
              'Get started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        const Spacer()
      ],
    ));
  }
}
