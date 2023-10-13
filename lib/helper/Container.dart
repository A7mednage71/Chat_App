import 'package:chatapp_final/Models/Home_chat_model.dart';
import 'package:flutter/material.dart';

class Container_build extends StatelessWidget {
  const Container_build({super.key, required this.num, required this.ontap});
  final Home_chat num;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 80,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(num.image),
                    radius: 27,
                  ),
                  num.isactive
                      ? Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              border: Border.all(width: 2, color: Colors.white),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  num.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  num.lastMessage,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(num.time, style: TextStyle(color: Colors.grey[600])),
            ),
          ],
        ),
      ),
    );
  }
}
