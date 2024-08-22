import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      title:"Hello BMC Flutter",
      home: Scaffold(
        appBar: AppBar(
        title: Text('Hello BMC Flutter'),
        backgroundColor:Colors.deepOrange,
        ),

    body: Builder (builder: (context)=>Center(
      child: Column (children: [
        Text(
      'Hello Flutter',
    style: TextStyle(
          fontSize:46,
          fontWeight: FontWeight.bold,
          color:Colors.blue[900]),

        ),


          Text(
            'Discover the Flutter',
        style: TextStyle(fontSize: 20, color:Colors.deepPurpleAccent),
        ),
        Image.network('https://th.bing.com/th/id/OIP.zKm7qwD6GogKEf76mWFkWAHaEK?w=289&h=180&c=7&r=0&o=5&pid=1.7',
        height:350,

    ),

        ElevatedButton(
            child: Text('Contact Us'),
            onPressed: ()=> contactUs(context),)
        ]
  )))));



}}
void contactUs(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context)
  {
    return AlertDialog(
      title: Text("Contact Us"),
      content: Text('Mail us at hello@world.com'),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
  },
  );






    }





