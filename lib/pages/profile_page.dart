import 'dart:ffi';

import 'package:flutter/material.dart';

class Profile_Page extends StatefulWidget {
  String email;
  String password;



  Profile_Page(this.email ,this.password){
    this.email = email;
    this.password = password;
  }
  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('The Second Page'),
        ),
        body: Container(
          width: double.infinity,
          child: Column
            (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //this.widget.email
              //this.widget.password
              SizedBox(
                width: 50,
                height: 20,
              ),

            ],
          ),
        )

    );

  }
}
