//api https://www.youtube.com/watch?v=4FaHjSl9muo
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart_p_m_p/pages/first_page.dart';
import 'package:smart_p_m_p/pages/register.dart';
import 'package:http/http.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confpassword = TextEditingController();
  bool pass = true ;

  void login (String email , password) async{
    print(email);
   try{
     Response response = await post(
       Uri.parse('https://simp.xpertbotacademy.online/api/login'),
       body: {
         'email' : email ,
         'password' : password
       }

     );
     if(response.statusCode ==200){

       var data = jsonDecode(response.body.toString());
       print(data['token']);
       if(data['token'] == null){
         print('failed');
       }
       else{
         print('account created successfully');
         setState(() {
           Navigator.of(context).push(
               MaterialPageRoute(builder: (n){
                 return First_Page(emailController.text , passwordController.text);
               })

           );
         });
       }
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
                login(emailController.text.toString(),passwordController.text.toString());
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (n){
                //       return First_Page(emailController.text , passwordController.text);
                //     })
                //
                // );
              },
            ),
          // GestureDetector(
          //   onTap:(){login(emailController.text.toString(),passwordController.text.toString());},
          //   child:  Container(
          //     child:   ElevatedButton(
          //
          //
          //       child: Text( 'Log in ',
          //           style: TextStyle(color: Colors.white, fontSize: 20)),
          //       onPressed: (){
          //         Navigator.of(context).push(
          //             MaterialPageRoute(builder: (n){
          //               return First_Page(emailController.text , passwordController.text);
          //             })
          //
          //         );
          //       },
          //     )
          //   )
          // ),
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



