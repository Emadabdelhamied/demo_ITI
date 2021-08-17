import 'package:flutter/material.dart';
import 'package:task_1/models/user.dart';
import 'package:task_1/screens/userDetails.dart';
import 'package:task_1/services/userServices.dart';
import 'package:task_1/shared/card.dart';
import 'package:task_1/shared/utils.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool loading = true;
  List<User> users = [];

  getUserList() async {
    users = await UserService().getUsers();
    loading = false;
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Screen"),
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  pushPage(context, UserDetails(users[index]));
                },
                child: MyCard(title: "${users[index].name}")),
          );
        },
      ),
    );
  }
}
