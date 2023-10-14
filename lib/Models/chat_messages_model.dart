import 'package:flutter/material.dart';

enum ChatMessagetype { text, audio, video, image }

enum MessagesStatus { not_sent, not_view, viewed }

class Chat_Message { 
  final String text;
  final ChatMessagetype messagetype;
  final MessagesStatus messagestate;
  final bool isSender;
  final String? sender; // name of the sender
  final String? senderImage; // image of the sender
  final String? imageUrl; 

  Chat_Message({
    this.text = '',
    required this.messagetype,
    required this.messagestate,
    required this.isSender,
    this.sender,
    this.senderImage,
    this.imageUrl,
  });
}

class Chat_Messages with ChangeNotifier {
  List<Chat_Message> chatMessages = [
    Chat_Message(
      text: 'Hi nageh, how are you ?',
      messagetype: ChatMessagetype.text,
      messagestate: MessagesStatus.viewed,
      isSender: true,
    ),
    Chat_Message(
      text: 'Hi Hakeem',
      messagetype: ChatMessagetype.text,
      messagestate: MessagesStatus.viewed,
      isSender: false,
    ),
    Chat_Message(
      text: 'what are you doing?',
      messagetype: ChatMessagetype.text,
      messagestate: MessagesStatus.viewed,
      isSender: true,
    ),
    Chat_Message(
      text: 'I am playing football',
      messagetype: ChatMessagetype.text,
      messagestate: MessagesStatus.viewed,
      isSender: false,
    ),
    Chat_Message(
      text: 'hope you are well',
      messagetype: ChatMessagetype.text,
      messagestate: MessagesStatus.viewed,
      isSender: true,
    ),
    Chat_Message(
      text: 'thanks',
      messagetype: ChatMessagetype.text,
      messagestate: MessagesStatus.viewed,
      isSender: true,
    ),
  ];

  void addMessage(Chat_Message message) {
    chatMessages.add(message);
    notifyListeners();
  }

  List<Chat_Message> get Messageslist {
    return chatMessages;
  }

}
