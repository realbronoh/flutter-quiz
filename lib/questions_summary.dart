import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final isCorrect = data['user_answer'] == data['correct_answer'];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCorrect ? Colors.blue : Colors.pink.shade300,
                    ),
                    child: Center(
                      child: Text(
                        "${(data['question_index'] as int) + 1}",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${data['question']}",
                            style: GoogleFonts.lato(
                              color: Colors.white,
                            )),
                        const SizedBox(height: 5),
                        Text("${data['user_answer']}",
                            style: GoogleFonts.lato(
                              color: Colors.orange,
                            )),
                        Text("${data['correct_answer']}",
                            style: GoogleFonts.lato(
                              color: Colors.blue,
                            )),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
