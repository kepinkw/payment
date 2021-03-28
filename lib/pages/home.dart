part of 'config.dart';



void main(){
  runApp(new MaterialApp(
    title: "Solucionis",
    home: new HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white70,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("Main Page"),
        ),
        actions: <Widget>[new Icon(Icons.notifications)],
      ),
    );
  }
}
