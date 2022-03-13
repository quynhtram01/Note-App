import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThungRac extends StatefulWidget {
  const ThungRac({Key? key}) : super(key: key);

  @override
  State<ThungRac> createState() => _ThungRacState();
}

class _ThungRacState extends State<ThungRac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thùng Rác'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
