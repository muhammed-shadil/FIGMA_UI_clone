import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String text;
  final String  image;
  final String time;
  const NotificationTile({super.key, required this.text,required this.image,required this.time});
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(text),
      trailing: Text(time),
      contentPadding:const EdgeInsets.all(10),
    );
  }
}
