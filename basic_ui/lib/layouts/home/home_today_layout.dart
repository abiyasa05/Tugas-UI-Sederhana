import 'package:flutter/material.dart';
import 'package:basic_ui/components/news_card.dart';

class HomeTodayLayout extends StatelessWidget {
  const HomeTodayLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewsCard(
          title: "My Card",
        )
      ],
    );
  }
}
