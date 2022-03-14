import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/widget/Navigation_Drawer.dart';
import '../main.dart';
import 'Note.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        title: buildSearchFile(),
        actions: [
          IconButton(
            icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                ? Icons.dark_mode
                : Icons.light_mode ),
            onPressed: () {
              MyApp.themeNotifier.value =
                  MyApp.themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
            })
        ],
      ),
      //body: Center(
      //  child: _widgetOptions.elementAt(_selectedIndex),
      //),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push( context,  MaterialPageRoute(builder: (context) => const Note()),);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'check',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_none),
            label: 'mic',
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.palette_outlined),
            label: 'paint',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.panorama),
            label: 'images',
            backgroundColor: Colors.purple,
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      )
    );

  buildSearchFile() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }
  }