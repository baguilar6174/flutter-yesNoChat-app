import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yesnochat_app/features/features.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final Message message = chatProvider.messages[index];
                  return (message.fromWho == FromWho.bot)
                      ? BotMessageBuble(message: message)
                      : MessageBuble(message: message);
                },
              ),
            ),
            FieldBox(
              // ? onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
