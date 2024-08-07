
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "R A H",
      theme:ThemeData(
          primarySwatch:Colors.purple,
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontFamily:'playwrite'),
          )
      ),
      home:HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<HomePage> {
  dynamic arr = [
    "Rana",
    "Ali",
    "Haider",
    "Abdullah",
    "Hasan",
    "AbdulRehman",
    "Umar",
    "latif",
    "Nabeel",
    "Wasim",
    "Babar"
  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade50,
        title: Center(child: Text("H O M E")),
      ),
      body:
      Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: arr.length, itemBuilder: (context, index) {
              return Card(
                elevation: 15,
                shadowColor: Colors.black,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/mangos.jpeg'),
                  ),
                  title: Text(
                    arr[index], style: TextStyle(fontFamily: 'playwrite'),),
                  subtitle: Text("5"),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            },
            ),
          ),

        ],
      ),
    );
  }
}


