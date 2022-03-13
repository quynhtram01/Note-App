import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LuuTru extends StatefulWidget {
  const LuuTru({Key? key}) : super(key: key);

  @override
  State<LuuTru> createState() => _LuuTruState();
}

class _LuuTruState extends State<LuuTru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lưu Trữ'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
