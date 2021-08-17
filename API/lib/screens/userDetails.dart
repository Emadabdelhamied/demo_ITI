import 'package:flutter/material.dart';
import 'package:task_1/models/user.dart';
import 'package:task_1/services/userServices.dart';
import 'package:task_1/shared/card.dart';
import 'package:task_1/shared/utils.dart';

class UserDetails extends StatefulWidget {
  User user;
  UserDetails(this.user);
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('User'),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyCard(
              title: "${widget.user.name}",
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  launchURL("mailto:${widget.user.email}");
                },
                child: Text("Email: ${widget.user.email}")),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  launchURL("tel:${widget.user.phone}");
                },
                child: Text("phone: ${widget.user.phone}")),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () {
                  launchURL("https://${widget.user.website}");
                },
                child: Text("Web: ${widget.user.website}"))
          ],
        ),
      ),
    );
  }
}
