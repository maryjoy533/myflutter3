import 'package:flutter/material.dart';

class PatientRegistration extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return PatientRegistrationState();
  }
}

class PatientRegistrationState extends State<PatientRegistration> {
  String _name;
  String _email;
  String _password;
  String _phoneNumber;
  String _address;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty){
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }



    Widget _buildEmail() {
     return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty){
          return 'Email is Required';
        }

        if(!RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
        .hasMatch(value)){
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }



    Widget _buildPassword() {
     return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty){
          return 'Password is Required';
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

    Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone Number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty){
          return 'Phone NUmber is Required';
        }
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

    Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      keyboardType: TextInputType.streetAddress,
      validator: (String value) {
        if (value.isEmpty){
          return 'Address is Required';
        }
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar:AppBar(title: Text("Patient Registration")),
      body: Container(
        margin: EdgeInsets.all(24),
        child:Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildName(),
            _buildEmail(),
            _buildPassword(),
            _buildPhoneNumber(),
            _buildAddress(),
            SizedBox(height: 100),
            RaisedButton(
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.blue, 
                  fontSize: 16),),
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }

                _formKey.currentState.save();  

                
                print(_name);
                print(_email);
                print(_password);
                print(_phoneNumber);
                print(_address);

              },
            ),



            
          ],



        ),
      ),
    ),);

  }


}