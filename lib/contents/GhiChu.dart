import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GhiChu extends StatefulWidget {
  const GhiChu({Key? key}) : super(key: key);

  @override
  State<GhiChu> createState() => _GhiChuState();
}

class _GhiChuState extends State<GhiChu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ghi Chú'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
