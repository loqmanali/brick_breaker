import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    super.key,
    required this.score,
  });

  final ValueNotifier<int> score;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: score,
      builder: (context, score, child) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 18.0),
          child: Text(
            'Score: $score'.toUpperCase(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        );
      }
    );
  }
}
