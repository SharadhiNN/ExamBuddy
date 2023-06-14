import 'package:exam_buddy/views/screens/group_chat_screen.dart';
import 'package:exam_buddy/views/screens/onboarding_screen.dart';
import 'package:exam_buddy/views/screens/profile_screen.dart';
import 'package:exam_buddy/views/screens/subject_screen.dart';
import 'package:exam_buddy/views/screens/todo_screen.dart';
import 'package:exam_buddy/views/screens/video_call_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('User'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text('Home'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.book,
              color: Colors.white,
            ),
            title: Text('Subjects'),
            onTap: () => Get.to(() => SubjectScreen()),
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.white,
            ),
            title: Text('To-do List'),
            onTap: () => Get.to(() => ToDoScreen()),
          ),
          ListTile(
            leading: Icon(
              Icons.group,
              color: Colors.white,
            ),
            title: Text('Groups'),
            onTap: () => Get.to(() => GroupChatScreen()),
          ),
          ListTile(
            leading: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
            title: Text('Call'),
            onTap: () => Get.to(() => VideoCallScreen()),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text('Profile'),
            onTap: () => Get.to(() => ProfileScreen()),
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onTap: () => Get.to(() => OnBoardingPage()),
          ),
        ],
      ),
    );
  }
}
