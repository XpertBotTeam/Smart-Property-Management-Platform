import 'dart:ffi';

import 'package:flutter/material.dart';

class First_Page extends StatefulWidget {
  String email;
  String password;



  First_Page(this.email ,this.password){
    // this.email = e;
    // this.password = p;
  }
  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
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
              Text(this.widget.email,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                ),
              ),
              Text(this.widget.password,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                ),
              ),

            ],
          ),
        )

    );

  }
}
