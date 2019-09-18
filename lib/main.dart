import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: List.generate(20, (int index) {
          return ListTile(
            title: Text("$index + aaaaaa"),
            onTap: () {
              print("onTap $index");
            },
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          ImagePicker.pickImage(source: ImageSource.camera);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
