import 'package:chatapp_final/Models/chat_messages_model.dart';
import 'package:chatapp_final/helper/MessageImage.dart';
import 'package:chatapp_final/helper/MessageText.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message, required this.index});

  final Chat_Message message;
  final int index;

  @override
  Widget build(BuildContext context) {
    switch (message.messagetype) {
      case ChatMessagetype.text:
        return MessageText(Message: message,);
      case ChatMessagetype.image:
        return MessageImage();

      default:
        return Container();
    }
  }
}
