import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài Đặt'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
      TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Tìm kiếm',
        hintStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(Icons.search, color: Colors.black),
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
                hintText: 'Chế độ',
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: IconButton(icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
    ? Icons.dark_mode
        : Icons.light_mode ),
    onPressed: () {
    MyApp.themeNotifier.value =
    MyApp.themeNotifier.value == ThemeMode.light
    ? ThemeMode.dark
        : ThemeMode.light;
    }),
                filled: true,
                fillColor: Colors.black12,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
     ]));

  }
}// TODO Implement this library.
