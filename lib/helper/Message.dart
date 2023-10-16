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
    Widget messageContain(Chat_Message message, int index) {
      switch (message.messagetype) {
        case ChatMessagetype.text:
          return MessageText(
            Message: message,
          );
        case ChatMessagetype.image:
          return MessageImage(
            message: message,
            index: index,
          );

        default:
          return Container();
      }
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (message.isSender) ...[
            CircleAvatar(
              radius: 20,
              child: Image.asset('assets/images/60111.jpg'),
            )
          ],
          Expanded(
            child: messageContain(message, index),
          ),
        ],
      ),
    );
  }
}
