import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomeActivity(),
    );
  }
}

ButtonStyle buttonStyle=ElevatedButton.styleFrom(
  minimumSize: Size(double.infinity, 60)
);

class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Forms"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(), labelText: 'First Name'),),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(), labelText: 'Last  Name'),),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(), labelText: 'eMail Adress'),),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(onPressed: (){},child: Text("Submit"),style: buttonStyle,)
          )
        ],
      ),
    );
  }
}