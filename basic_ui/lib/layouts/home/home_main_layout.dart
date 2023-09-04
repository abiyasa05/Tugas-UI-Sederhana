import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:basic_ui/components/news_card.dart';

class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://static.republika.co.id/uploads/images/inpicture_slide/karakter-dalam-manga-jujutsu_220814165159-134.jpg',
            fit: BoxFit.cover,
            height: 400,
            width: double.infinity,
          ),
          const SizedBox(height: 8),
          Text(
            'Messi dan Ronaldo',
            style: GoogleFonts.plusJakartaSans(fontSize: 21),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.purple),
            child: const Text("Transfer"),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              ...List.generate(
                5,
                (index) => const NewsCard(
                  title: "Testing NewsCard",
                ),
              ),
              ...List.generate(
                5,
                (index) => const NewsCard2(
                  title: "Testing NewsCard2",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
