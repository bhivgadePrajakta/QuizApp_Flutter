import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Welcome to the Quiz!',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 244, 242, 253),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 244, 242, 253),
              backgroundColor: const Color.fromARGB(255, 244, 242, 253),
              shadowColor: const Color.fromARGB(255, 78, 21, 196),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.deepPurple,
            ),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
