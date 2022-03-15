import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Note.dart';
class LuuTru extends StatefulWidget {
  const LuuTru({Key? key}) : super(key: key);

  @override
  State<LuuTru> createState() => _LuuTruState();
}

class _LuuTruState extends State<LuuTru> {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kho lưu trữ'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
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
            ListTile(
              leading: icon,
              title: Text("Ghi chú 1"),
              subtitle: Text("#1"),
              trailing: icon,
              tileColor: Colors.blueGrey,
            ),
            ListTile(
              leading: icon,
              title: Text("Ghi chú 2"),
              subtitle: Text("#2"),
              trailing: icon,
              tileColor: Colors.blueGrey,
            ),
            ListTile(
              leading: icon,
              title: Text("Ghi chú 3"),
              subtitle: Text("#3"),
              trailing: icon,
              tileColor: Colors.blueGrey,
            ),
            ListTile(
              leading: icon,
              title: Text("Ghi chú 4"),
              subtitle: Text("#4"),
              trailing: icon,
              tileColor: Colors.blueGrey,
            ),
            ListTile(
              leading: icon,
              title: Text("Ghi chú 4"),
              subtitle: Text("#4"),
              trailing: icon,
              tileColor: Colors.blueGrey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        splashColor: Colors.black12,
        backgroundColor: Colors.white,
        onPressed: () {Navigator.push( context,  MaterialPageRoute(builder: (context) => const Note()),);},
        tooltip: 'Thêm một ghi chú mới',
      ),
    );
  }
}// TODO Implement this library.
