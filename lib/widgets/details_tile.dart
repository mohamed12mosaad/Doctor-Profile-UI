import 'package:flutter/material.dart';

class DetailsTile extends StatelessWidget {
  const DetailsTile({super.key, required this.lebel, required this.icon,});
  final String lebel;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.indigo,
          child: Icon(
            icon,
             color: Colors.white,
             size: 16,),
        ),
        SizedBox(width: 10,),
        Text(lebel,
        style: TextStyle(fontSize: 16),),
      ],
    );
  }
}

