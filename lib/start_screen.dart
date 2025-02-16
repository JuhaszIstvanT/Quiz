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
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(162, 228, 215, 214)
        ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 211, 174, 174), fontSize: 24),
        ),
        SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: Icon(Icons.arrow_right_alt),
          label: Text('Start Quiz'),
        )
      ],
    ));
  }
}
