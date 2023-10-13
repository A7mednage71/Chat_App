import 'package:chatapp_final/Models/Home_chat_model.dart';
import 'package:chatapp_final/Screens/Chat_page.dart';
import 'package:chatapp_final/helper/Container.dart';
import 'package:chatapp_final/helper/Controlmessages.dart';

import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final List<Home_chat> listitems = [
    Home_chat(
        name: 'Ahmed Nageh',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '11:00',
        isactive: true),
    Home_chat(
        name: 'Mostafa Hashem',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '10:05',
        isactive: true),
    Home_chat(
        name: 'Yousef hakeem',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '01:05',
        isactive: false),
    Home_chat(
        name: 'Amr mostafa',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '07:00',
        isactive: false),
    Home_chat(
        name: 'Asharf yousery',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '10:15',
        isactive: false),
    Home_chat(
        name: 'fares Abdalwahed',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '09:45',
        isactive: true),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: false),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: false),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: true),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: false),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: false),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: true),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: true),
    Home_chat(
        name: 'shaban Soltan',
        image: 'assets/images/60111.jpg',
        lastMessage: 'Hello',
        time: '03:20',
        isactive: false),
  ];

  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Chats',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.green,
            height: 60,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Control_messages(
                    isfilled: false,
                    text: 'Recent messages',
                    ontap: () {},
                  ),
                ),
                Control_messages(
                  isfilled: true,
                  text: 'Active',
                  ontap: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: listitems.length,
                  itemBuilder: (BuildContext, Index) {
                    return Container_build(
                      num: listitems[Index],
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Chat_page()));
                      },
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.group_add),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBar(
            currentIndex: _selectedindex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            onTap: (Index) {
              setState(() {
                _selectedindex = Index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: 'Call',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/60111.jpg'),
                ),
                label: 'profile',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
