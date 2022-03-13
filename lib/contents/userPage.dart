import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userPage extends StatefulWidget {
  const userPage({Key? key, required urlImage, required name}) : super(key: key);

  @override
  State<userPage> createState() => _userPageState();
}

class _userPageState extends State<userPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}
