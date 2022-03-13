import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/contents/GhiChu.dart';
import 'package:note_app/contents/LoiNhac.dart';
import 'package:note_app/contents/LuuTru.dart';
import 'package:note_app/contents/Setting.dart';
import 'package:note_app/contents/ThungRac.dart';
import 'package:note_app/contents/TroGiup.dart';
import 'package:note_app/contents/userPage.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'K Vang';
    final email = 'kvang05112002@gmail.com';
    final urlImage = 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: ()=> Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => userPage(
                    name: 'K Vang',
                    urlImage: urlImage,
                  ),
                ))
            ),
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Ghi chú',
              icon: Icons.lightbulb_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Lời nhắc',
              icon: Icons.alarm_add_sharp,
              onClicked: () => selectedItem(context, 1),/**/
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Lưu trữ',
              icon: Icons.save_alt_rounded,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Thùng rác',
              icon: Icons.delete_rounded,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Cài đặt',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),

            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Trợ giúp và phản hồi',
              icon: Icons.build_circle,
              onClicked: () => selectedItem(context, 5),
            ),
          ],
        ),
      ),
    );
  }

  buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => GhiChu(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LoiNhac(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LuuTru(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ThungRac(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Setting(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TroGiup(),
        ));
        break;
    }
  }

  buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.white),
              )
            ],
          ),
        ),
      );
}
