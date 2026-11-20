import 'package:flutter/material.dart';
import 'package:doctor_profile_ui/widgets/call_button.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            'https://tse1.mm.bing.net/th/id/OIP.MROSFnKJYh9wWxIchZGzhgHaHa?pid=ImgDet&w=184&h=184&c=7&dpr=1.3&o=7&rm=3',
            height: 140,
            width: 140,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mohamed Mosaad',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text('Eye Special', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.star_rounded, color: Colors.orange),
                SizedBox(width: 3),
                Text('3', style: TextStyle(fontSize: 14)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                CallButton(text: '1', onTap: () {}),
                SizedBox(width: 8),
                CallButton(text: '2', onTap: () {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

