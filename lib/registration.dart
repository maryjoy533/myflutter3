import 'package:flutter/material.dart';
import 'doctoregistration.dart';
import 'patientregistration.dart';
                                                                                                  
class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('DocApp Registration'),
      ),//appbar
     body: Center(
      child:Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width:180,
          height:85,
          child: RaisedButton(
          padding:EdgeInsets.symmetric(vertical:8, horizontal:30),
          onPressed: () {
          print('rised button');
          
        },
        color: Colors.blue[700],
        splashColor: Colors.purple[700],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child:Text('Admin Registration', style:TextStyle(color: Colors.white, fontSize: 15),
           ),//text
       ),//raisebutton
       ),//SizedBOx
       SizedBox(
        height:16,
       ),
        
      
        SizedBox(
          width:180,
          height:85,
          child: RaisedButton(
          padding:EdgeInsets.symmetric(vertical:8, horizontal:30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=>PatientRegistration())
              );
          
        },
        color: Colors.blue[700],
        splashColor: Colors.purple[700],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child:Text('Patient Registration', style:TextStyle(color: Colors.white, fontSize: 15),
           ),//text
       ),//raisebutton
       ),//SizedBOx
        SizedBox(
        height:16,
       ),
        
        SizedBox(
          width:180,
          height:85,
          child: RaisedButton(
          padding:EdgeInsets.symmetric(vertical:8, horizontal:30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context)=>DoctorRegistration())
              );
          
        },
        color: Colors.blue[700],
        splashColor: Colors.purple[700],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child:Text('Doctor Registration', style:TextStyle(color: Colors.white, fontSize: 15),
           ),//text
       ),//raisebutton
       ),//SizedBOx
      ],//children
     )),//column, center
      

    );//scaffold
  }
}