import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TroGiup extends StatefulWidget {
  const TroGiup({Key? key}) : super(key: key);

  @override
  State<TroGiup> createState() => _TroGiupState();
}

class _TroGiupState extends State<TroGiup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trợ giúp và phản hồi'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}
