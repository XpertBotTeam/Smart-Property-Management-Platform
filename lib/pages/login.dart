
import 'package:flutter/material.dart';
import 'package:smart_p_m_p/pages/first_page.dart';
import 'package:smart_p_m_p/pages/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();
  var password = TextEditingController();
  var confpassword = TextEditingController();
  bool pass = true ;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          // title: Text(
          //   'Account',
          //   style: TextStyle(
          //     fontSize: 30,
          //     fontStyle: FontStyle.italic,
          //   ),
          // ),
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
              controller: email,
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
              controller: confpassword,
              decoration: InputDecoration(
                labelText: ' Password',
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
              height: 50,
            ),
            ElevatedButton(


              child: Text( 'Log in ',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (n){
                      return First_Page(email.text , password.text);
                    })

                );
              },
            ),
          ElevatedButton(
          child: Text( 'Register ',
          style: TextStyle(color: Colors.white, fontSize: 20)),
             onPressed: (){
               Navigator.of(context).push(
               MaterialPageRoute(builder: (n){
                     return Register();
                   })

               );
                },
               )
          ],
        ),
      );

  }
}



