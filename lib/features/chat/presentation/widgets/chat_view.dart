import 'package:flutter/material.dart';
import 'package:yesnochat_app/features/features.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const BotMessageBuble()
                      : const MessageBuble();
                },
              ),
            ),
            const FieldBox(),
          ],
        ),
      ),
    );
  }
}
