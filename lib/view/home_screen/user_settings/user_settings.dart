import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';
import 'package:messenger_ui/utils/image_constant/imageconstant.dart';
import 'package:messenger_ui/view/home_screen/user_settings/userSettings_widget.dart';

class UserSettingsScreen extends StatelessWidget {
  const UserSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Done",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(profileCode)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Nick Leister",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: black,
                      ),
                    )
                  ],
                ),
              ),
              UsersettingsWidget(
                text: "Dark Mode",
                avatar: darkMode,
                trailing: CupertinoSwitch(
                  value: false,
                  onChanged: (value) {},
                ),
              ),
              UsersettingsWidget(
                  text: "Active Status",
                  avatar: activeStatus,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "On",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )
                    ],
                  )),
              UsersettingsWidget(
                  text: "Username",
                  avatar: username,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "m.me/Nick_L",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )
                    ],
                  )),
              UsersettingsWidget(
                  text: "Phone",
                  avatar: phone,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "+1 202 555 0147",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                        color: Colors.grey,
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "PREFERENCES",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              UsersettingsWidget(
                  text: "Notifications & Sounds",
                  avatar: notifications,
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                    color: Colors.grey,
                  )),
              UsersettingsWidget(
                  text: "People",
                  avatar: people_icon,
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                    color: Colors.grey,
                  )),
              UsersettingsWidget(
                  text: "Messaging Settings",
                  avatar: messenger_icon,
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    size: 30,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
