import 'package:chatapp_final/Models/chat_messages_model.dart';
import 'package:flutter/material.dart';

class MessageImage extends StatelessWidget {
  const MessageImage({super.key, required this.message, required this.index});

  final Chat_Message message;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        children: [
          ClipRRect(
            child: Image.network(
              message.imageUrl!,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
