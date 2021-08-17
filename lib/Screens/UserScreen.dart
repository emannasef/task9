import 'package:flutter/material.dart';
import 'package:finalproject/Models/User.dart';
import 'package:finalproject/Services/NewUser.dart';
import 'package:finalproject/Widgets/MyCard.dart';
import 'package:finalproject/Screens/userDetails.dart';
import 'package:finalproject/utils.dart';

class UserScreen extends StatefulWidget {
  static const String id = 'UserScreen';

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool isLoading = true;
  List<User> userList = [];

  Future myUser() async {
    userList = await NewUser().getUser();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    myUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('users'),
          centerTitle: true,
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, i) => InkWell(
                  onTap: () {
                    pushToScreen(context, UserDetails(userList[i]));
                  },
                  child: MyCard(
                    title: userList[i].name,
                  ),
                ),
              ));
  }
}
