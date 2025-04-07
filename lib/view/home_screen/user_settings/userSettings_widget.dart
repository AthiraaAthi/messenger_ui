import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersettingsWidget extends StatelessWidget {
  const UsersettingsWidget(
      {super.key,
      required this.text,
      required this.avatar,
      required this.trailing});
  final String avatar;
  final String text;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(avatar),
          ),
          title: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          trailing: CupertinoSwitch(
            value: false,
            onChanged: (value) {},
          ),
        ),
        Divider()
      ],
    );
  }
}
