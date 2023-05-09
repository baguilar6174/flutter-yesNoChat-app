import 'package:yesnochat_app/features/chat/chat.dart';

class MessageModel {
  String answer;
  bool forced;
  String image;

  MessageModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory MessageModel.fromJsonMap(Map<String, dynamic> json) {
    return MessageModel(
      answer: json['answer'],
      forced: json['forced'],
      image: json['image'],
    );
  }

  Message toMessageEntity() {
    return Message(
      text: answer == 'yes' ? 'Si' : 'No',
      fromWho: FromWho.bot,
      imageUrl: image,
    );
  }
}
