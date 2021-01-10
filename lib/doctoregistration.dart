import 'package:flutter/material.dart';

class DoctorRegistration extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return DoctorRegistrationState();
  }
}

class DoctorRegistrationState extends State<DoctorRegistration> {
  String _name;
  String _specialist;
  String _location;
  String _address;
  String _shedule;
  String _fees;
  

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
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



    Widget _buildSpecialist() {
     return TextFormField(
      decoration: InputDecoration(labelText: 'Specialist In'),
      validator: (String value) {
        if (value.isEmpty){
          return 'Required';
        }

        return null;
      },
      onSaved: (String value) {
        _specialist = value;
      },
    );
  }



    Widget _buildLocation() {
     return TextFormField(
      decoration: InputDecoration(labelText: 'Location'),
      validator: (String value) {
        if (value.isEmpty){
          return 'Location is Required';
        }
      },
      onSaved: (String value) {
        _location = value;
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

    Widget _buildSchedule() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Schedule'),
      validator: (String value) {
        if (value.isEmpty){
          return 'Shedule is Required';
        }
      },
      onSaved: (String value) {
        _shedule = value;
      },
    );
  }

    Widget _buildFees() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Fees'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty){
          return 'Required';
        }
      },
      onSaved: (String value) {
        _shedule = value;
      },
    );
  }

   



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar:AppBar(title: Text("Dcotor Registration")),
      body: Container(
        margin: EdgeInsets.all(24),
        child:Form(
          key: _formKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildName(),
            _buildSpecialist(),
            _buildLocation(),
            _buildAddress(),
            _buildSchedule(),
            _buildFees(),
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
                print(_specialist);
                print(_location);
                print(_address);
                print(_shedule);
                print(_fees);

              },
            ),



            
          ],



        ),
      ),
    ),);

  }


}