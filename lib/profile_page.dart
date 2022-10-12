import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("User ${index + 1}"),
          leading: Icon(Icons.person),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.check_box),
          ),
          onTap: () {},
        );
      },
    );
  }
}
