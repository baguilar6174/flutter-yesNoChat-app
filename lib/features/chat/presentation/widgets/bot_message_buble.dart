import 'package:flutter/material.dart';
import 'package:yesnochat_app/features/features.dart';

class BotMessageBuble extends StatelessWidget {
  final Message message;

  const BotMessageBuble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        ImageMessage(imageUrl: message.imageUrl!),
        const SizedBox(height: 5),
      ],
    );
  }
}
