
import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:kommunicate_flutter/kommunicate_flutter.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: "chai-chat",
      theme: ThemeData(brightness: Brightness.light),
      home: HomePage()
      
    );
  }
}

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, allowFontScaling: true)..init(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ChatBot"),),
        floatingActionButton: FloatingActionButton(onPressed: (){
             dynamic conversationObject = {
'appId': '2356cc6f9f69ef6c0587340232377106',// The APP_ID obtained from kommunicate dashboard.
};
KommunicateFlutterPlugin.buildConversation(conversationObject) .then((clientConversationId) { print("Conversation builder success : " + clientConversationId.toString()); }).catchError((error) { print("Conversation builder error : " + error.toString()); });
        },
        tooltip: "assistant button",
        child: Icon(Icons.message)
      ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Color(0xFFE7F6FD)),
            //width = MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(5.0),


            
             child: Column(children: [
               Center(
                 child: Card(
                   color: Colors.yellowAccent,
                   elevation: 20.0,
                   child: Text("Hi...",
                   style: TextStyle(
                     fontSize:20.0,
                     fontStyle: FontStyle.italic
                   )),
                 ),
               ),
               SizedBox(height: 10.0,),
               Center(child:Card(
                   color: Colors.pinkAccent,
                   elevation: 20.0,
                   child:  Text("Your Virtual Buddy is Just one click away from you !!",
                   style: TextStyle(
                     fontSize:30.0,
                     fontStyle: FontStyle.italic
                   ))),
               ), 
               
               

             ],)
          ),
        ),
      
    );
  }
}
//code created by Anushka Mishra