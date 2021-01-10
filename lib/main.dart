import 'package:flutter/material.dart';
import 'registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}                                                                                                   

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
     
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
           Text(
                  'DocApp',
                  style: TextStyle(
                    fontSize: 30,  
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                    
                  ),),
        SizedBox(
        height:30,
       ),
            
           RaisedButton(
              color: Colors.blue[700],
              splashColor: Colors.purple[700],
              shape: StadiumBorder(),
              elevation: 20,
              onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=> Registration())
                  );
              },    
              padding: EdgeInsets.symmetric(vertical: 25.0,horizontal:30.0),
                child:Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 15,  
                    color: Colors.white
                  ),//style
              ),//text
             ),//raisebutton
            
           
          ],//widget
        ),//column
      ),//padding

    );//scaffold
  }
}