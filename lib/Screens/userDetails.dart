import 'package:finalproject/Models/User.dart';
import 'package:finalproject/Widgets/MyCard.dart';
import 'package:finalproject/utils.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  final User user;
  UserDetails(this.user);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserDetails'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCard(
                  title: widget.user.username,
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    launchUrl('mailto:${widget.user.email}');
                  },
                  child: Text(
                    'Email :   ${widget.user.email}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    launchUrl('tel:${widget.user.phone}');
                  },
                  child: Text(
                    'Phone :   ${widget.user.phone}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    launchUrl('https://${widget.user.phone}');
                  },
                  child: Text(
                    'WebSite:   ${widget.user.website}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
