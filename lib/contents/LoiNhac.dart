import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoiNhac extends StatefulWidget {
  const LoiNhac({Key? key}) : super(key: key);

  @override
  State<LoiNhac> createState() => _LoiNhacState();
}

class _LoiNhacState extends State<LoiNhac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lời Nhắc'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
