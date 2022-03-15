import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Note.dart';
class ThungRac extends StatefulWidget {
  const ThungRac({Key? key}) : super(key: key);

  @override
  State<ThungRac> createState() => _ThungRacState();
}
class _ThungRacState extends State<ThungRac> {
  get icon => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thùng Rác'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Đã xóa gần đây',
              style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.bold,)
            ),
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
            const Text(
                'Các ghi chú sẽ có sẵn tại đây trong 30 ngày nữa. Sau thời gian '
                    'đó, các ghi chú sẽ bị xoá vĩnh viễn. Thời gian này có thể dài '
                    'tối đa 40 ngày.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  )
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
}
