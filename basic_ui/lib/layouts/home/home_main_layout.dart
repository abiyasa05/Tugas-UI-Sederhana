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
            'https://gdb.voanews.com/79D92D70-34A8-4C32-BEF9-BE5E8F7C0C1A_w1023_r1_s.jpg',
            fit: BoxFit.cover,
            height: 200,
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
            children: List.generate(
                10,
                (index) => const NewsCard(
                      title: "Testing",
                    )),
          ),
        ],
      ),
    );
  }
}
