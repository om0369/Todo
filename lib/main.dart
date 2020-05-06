import 'package:flutter/material.dart';
import 'package:note_app/screens/noteList.dart';
import 'package:note_app/screens/noteDetail.dart';


void main() => runApp(MaterialApp(
  title: "StateFull Example",
  home: NoteApp(),
));


//void main() {
//  print("Programm Starts");
//  printFileContent();
//  print("Programme Ends");
//}


class NoteApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Note Keeper",
      home: MyNoteList() ,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
    );
  }
}

// HOW async and a
 printFileContent() async {
  String file = await downloadFile();
  print("The file is -> $file");
 }

Future<String> downloadFile() {

   Future<String> result = Future.delayed(Duration(seconds: 6), () {

     return "The Download File";
   });
return result;
}