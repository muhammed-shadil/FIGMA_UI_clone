import 'package:flutter/material.dart';

//
class Profiletile extends StatelessWidget {
  // Profiletile({super.key, required Icon icon});
  final Widget? icon;
  final String? text;
  const Profiletile({super.key, this.icon, this.text});
//
  @override
  Widget build(BuildContext context) {
    List pro = [
      const Profiletile(
          icon: Icon(Icons.account_circle_outlined), text: "My Information "),
      const Profiletile(icon: Icon(Icons.location_on), text: "Address"),
      const Profiletile(icon: Icon(Icons.payment), text: "Payment"),
      const Profiletile(icon: Icon(Icons.heart_broken), text: "My wishlist"),
      const Profiletile(icon: Icon(Icons.store), text: "cafe Following"),
      const Profiletile(icon: Icon(Icons.refresh), text: "Refund"),
      const Profiletile(icon: Icon(Icons.lock), text: "Password"),
      const Profiletile(icon: Icon(Icons.settings), text: "Setting"),
      const Profiletile(icon: Icon(Icons.details), text: "Privacy and policy"),
    ];
    return ListView.separated(
      itemCount: 9,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          indent: 10,
          endIndent: 10,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: pro[index].icon,
          title: Text(pro[index].text),
        );
      },
    );
  }
}
