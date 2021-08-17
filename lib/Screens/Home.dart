import 'package:flutter/material.dart';
import 'Screen2.dart';

class HomeScreen extends StatefulWidget {
  static const String id = ' home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 200,
                    width: 200,
                    child: Image(image: AssetImage('images/flutter.jpg'))),
                TextFormField(
                  controller: phoneController,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: 'Phone Number'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 400.0,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, Task2.id);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Screen2(
                                    counter2: counter,
                                  )));
                    },
                    child: Text('Log In'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forget Password? No yawa '),
                    TextButton(
                      onPressed: () {},
                      child: Text('Tab me'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  width: 400.0,
                  color: Colors.grey[600],
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text('No Account? Sign Up'),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 50.0, color: Colors.red),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++counter;
            print('$counter');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
