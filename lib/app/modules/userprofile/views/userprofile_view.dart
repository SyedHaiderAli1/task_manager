import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:task_manager/app/modules/editprofile/views/editprofile_view.dart';
import 'package:task_manager/repository/authentication_repository/authentication_repository.dart';

import '../controllers/userprofile_controller.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({super.key});

  @override
  State<UserProfileView> createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'User Profile',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(right: 20,left: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:50),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector.png'),
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.yellow),
                  child: IconButton(
                    icon: Icon(LineAwesomeIcons.alternate_pencil),
                    onPressed: () {
                      // Implement edit functionality
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'john.doe@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement button action
                Get.to(EditprofileView());
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                // Implement list tile action
              },
              splashColor: Colors.blue,
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),
            ListTile(
              onTap: () {
                // Implement list tile action
              },
              splashColor: Colors.blue,
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),
            ListTile(
              onTap: () {
                // Implement list tile action
                AuthenticationRepository.instance.logout();
              },
              splashColor: Colors.blue,
              leading: Icon(Icons.help),
              title: Text('Logout',style: TextStyle(color: Colors.red),),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),
            // Add more ListTiles as needed
          ],
        ),
      ),
    );
  }
}

