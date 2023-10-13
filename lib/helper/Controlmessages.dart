import 'package:flutter/material.dart';

class Control_messages extends StatelessWidget {
  const Control_messages({
    super.key,
    required this.isfilled,
    required this.text,
    required this.ontap,
  });

  final bool isfilled;
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: isfilled ? Colors.green : Colors.white,
      onPressed: ontap,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.white)),
      elevation: isfilled ? 0 : 4,
      child: Text(
        text,
        style: TextStyle(
          color: isfilled ? Colors.white : Colors.blue,
        ),
      ),
    );
  }
}
