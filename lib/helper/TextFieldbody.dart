import 'dart:html';

import 'package:chatapp_final/Models/chat_messages_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChatInputField extends StatefulWidget {
  ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Add a listener to the controller to update the state when text changes
    controller.addListener(() {
      setState(() {
        controller.text.isEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Send Message',
          prefixIcon: const Icon(Icons.sentiment_satisfied_alt_outlined),
          suffixIcon: controller.text.isEmpty
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () async {
                        XFile? file = await new ImagePicker()
                            .pickImage(source: ImageSource.camera);
                        final storage = FirebaseStorage.instance;
                        final firestore = FirebaseFirestore.instance;

                        final message = Chat_Message(
                          messagetype: ChatMessagetype.image,
                          messagestate: MessagesStatus.viewed,
                          isSender: true,
                          imageUrl: file!.path,
                        );

                        final user = FirebaseAuth.instance.currentUser;
                        final ref = storage.ref().child('images').child(
                            DateTime.now().toIso8601String() + file.name);
                      },
                      icon: Icon(Icons.camera_alt_outlined),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.attach_file_outlined)),
                  ],
                )
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: Colors.amber,
                  ),
                ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
