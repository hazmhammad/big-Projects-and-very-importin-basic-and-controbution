import 'package:flutter/material.dart';
import 'package:flutter_application_logindesgin/modles/users_modes.dart/user.dart';

class Usermodle extends StatefulWidget {
  @override
  _UsermodleState createState() => _UsermodleState();
}

class _UsermodleState extends State<Usermodle> {
  List<Hazm> users = [
    Hazm(id: 1, name: "hazm hammad", phone: "5454"),
    Hazm(id: 5, name: "hazm hammad", phone: "5454"),
    Hazm(id: 3, name: "hazm haknkjauhf", phone: "5646515611"),
    Hazm(id: 5, name: "knlvmlsmvkm", phone: "06587885693147895"),
    Hazm(id: 5, name: "knlvmlsmvkm", phone: "06587885693147895"),
    Hazm(id: 5, name: "knlvmlsmvkm", phone: "06587885693147895"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UserHome"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey[300],
              ),
          itemCount: users.length),
    );
  }

  Widget buildUserItem(Hazm kasncn) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text(
                '${kasncn.id}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${kasncn.name}"),
                Text(
                  "${kasncn.phone}",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
      );
}
