import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  const Note({Key? key}) : super(key: key);

  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new note'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "None text",
              ),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Your notes",
                  ),
                )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Save Note"),
        icon: Icon(Icons.save),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_none),
            label: 'recording',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.av_timer),
            label: 'av_timer',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.palette),
            label: 'palette',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black54,
          ),
        ],
      ),
    );
  }
}
