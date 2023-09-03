
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_p_m_p/pages/first_page.dart';
import 'package:http/http.dart';
class Register extends StatefulWidget {


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confpasswordController = TextEditingController();
  bool pass = true ;

  void register (String name , email , password) async{
    print(name);
    try{
      Response response = await post(
          Uri.parse('https://simp.xpertbotacademy.online/api/register'),
          body: {
            'name' : name ,
            'email' : email ,
            'password' : password
          }

      );
      if(response.statusCode ==200){
        print(' register account created successfully');
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        setState(() {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (n){
                return First_Page(emailController.text , passwordController.text);
              })

          );
        });
      }
      else {
        print('failed');
      }
    }
    catch(e){
      print(e.toString());

    }
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Registration',
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 20,
            ),

            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter Name',
                suffixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(
              width: 50,
              height: 20,
            ),

            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter Email',
                suffixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(
              width: 50,
              height: 20,
            ),
            TextFormField(
              obscureText: pass,
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined),
                  onPressed: (){
                    setState(() {
                      pass=!pass;
                    });
                  },
                ),
                //Icon(Icons.remove_red_eye_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(
              width: 50,
              height: 20,
            ),
            TextFormField(
              obscureText: pass,
              controller: confpasswordController,
              decoration: InputDecoration(
                labelText: 'Confirmation Password',
                hintText: 'Enter Password',
                suffixIcon: IconButton(
                  icon: Icon(Icons.remove_red_eye_outlined),
                  onPressed: (){
                    setState(() {
                      pass=!pass;
                    });

                  },
                ),

                //Icon(Icons.remove_red_eye_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(
              width: 50,
              height: 20,
            ),
            ElevatedButton(


              child: Text( 'Register',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onPressed: (){
                register(
                    nameController.text.toString(),
                    emailController.text.toString(),
                    passwordController.text.toString());
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (n){
                      return First_Page(emailController.text , passwordController.text);
                    })

                );
              },
            )
          ],
        ),
      );

  }
}



