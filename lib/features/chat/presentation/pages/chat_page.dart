import 'package:flutter/material.dart';
import 'package:yesnochat_app/features/features.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/47910273?v=4',
            ),
          ),
        ),
        title: const Text('Chat bot'),
        centerTitle: true,
      ),
      body: const ChatView(),
    );
  }
}
