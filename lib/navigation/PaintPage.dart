import 'package:flutter/material.dart';
class PaintPage extends StatefulWidget {
  const PaintPage({Key? key}) : super(key: key);

  @override
  State<PaintPage> createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paint Page"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
    );
  }
}
