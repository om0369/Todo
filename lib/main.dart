import 'package:flutter/material.dart';
import 'package:note_app/screens/noteList.dart';


void main() => runApp(NoteList());

class NoteList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Home Data",
      home: HomeScreen(),
    );
  }

}
class HomeScreen extends StatelessWidget {

  String title = "press me!";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Return Data"),
      ),
      body: Center(
        child: SelectionButton(),
      ),
    );
  }

  }


  class SelectionButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        navigateToSelectionScreen(context) ;},
      child: (
      Text(
        // I wamt to set this button title on pop back the whatever the option choose.
        //"$HomeScreen().title" 
          "Press me!"
      )
      ),
    );
  }
  }

    navigateToSelectionScreen(BuildContext context) async {
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SelectionScreen() ));
    
  HomeScreen().title = result;
  Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text("$result"),));

  }

class SelectionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pick An Option"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () { Navigator.pop(context, "Yes It is");},
              child: Text(
                "Press Yes!"
              ),
            ),
            RaisedButton(
              onPressed: () { Navigator.pop(context, "No its Not"); },
              child: Text(
                "Press No!"
              ),
            )
          ],
        ),
      ),
    );
  }
}