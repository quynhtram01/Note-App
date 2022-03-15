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
      body: SafeArea(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage('images/meow.jpg'),
    ),
    Text('Quynh Tram',
    style: TextStyle(
    fontSize: 40,
    color: Colors.black,
    fontWeight: FontWeight.bold)),
    SizedBox(
    height: 20,
    width: 200,
    child: Divider(
    color: Colors.teal.shade700,
    ),
    ),
      TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          hintText: 'Họ và tên',
          hintStyle: TextStyle(color: Colors.black),
          prefixIcon: Icon(Icons.person, color: Colors.black),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          hintText: 'Số điện thoại',
          hintStyle: TextStyle(color: Colors.black),
          prefixIcon: Icon(Icons.call, color: Colors.black),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          hintText: 'Email',
          hintStyle: TextStyle(color: Colors.black),
          prefixIcon: Icon(Icons.account_tree, color: Colors.black),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          hintText: 'Đăng xuất',
          hintStyle: TextStyle(color: Colors.black),
          prefixIcon: Icon(Icons.lock, color: Colors.black),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      ]
      )
    )
    );
  }
}// TODO Implement this library.
