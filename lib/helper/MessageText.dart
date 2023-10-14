import 'package:chatapp_final/Models/chat_messages_model.dart';
import 'package:chatapp_final/helper/Message.dart';
import 'package:flutter/material.dart';

class MessageText extends StatelessWidget {
  const MessageText({super.key, required this.Message});

  final Chat_Message Message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          !(Message.isSender)
              ? const Text("Ahmed Nageh",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))
              : const SizedBox(
                  height: 3,
                ),
          Text(
            Message.text,
            style: TextStyle(
                color: Message.isSender ? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }
}
