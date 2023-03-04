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
  minimumSize: const Size(double.infinity, 60)
);

class HomeActivity extends StatelessWidget{
  HomeActivity({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Forms"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(), labelText: 'First Name'),),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(), labelText: 'Last  Name'),),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(), labelText: 'eMail Address'),),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(onPressed: (){},style: buttonStyle,child: const Text("Submit"),)
          )
        ],
      ),
    );
  }
}