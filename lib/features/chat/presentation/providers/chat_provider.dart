import 'package:flutter/material.dart';
import 'package:yesnochat_app/features/chat/chat.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetAnswer getAnswer = GetAnswer();

  List<Message> messages = [
    Message(text: "Hello!", fromWho: FromWho.me),
    Message(text: "Did you come back?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final message = Message(text: text, fromWho: FromWho.me);
    messages.add(message);
    if (text.endsWith('?')) await bootReply();
    // * Notify changes to UI
    notifyListeners();
    await moveScroll();
  }

  Future<void> bootReply() async {
    final message = await getAnswer.getAnswer();
    messages.add(message);
    // * Notify changes to UI
    notifyListeners();
    await moveScroll();
  }

  Future<void> moveScroll() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
