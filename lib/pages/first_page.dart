import 'dart:ffi';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:smart_p_m_p/pages/card_details_page.dart';
//https://www.youtube.com/watch?v=iyYtODj_iwE
class First_Page extends StatefulWidget {
  String email;
  String password;



  First_Page(this.email ,this.password){
     this.email = email;
     this.password = password;
  }
  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
   int currentIndex = 0;
   late PageController _pageController;

   @override
   void initState(){
     super.initState();
     _pageController = PageController();
   }
  @override
  void dispose( ){
     _pageController.dispose();
     super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Properties")),
      body:SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              currentIndex = index;
            });
          },
          children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                     alignment: Alignment.bottomLeft,
                     children: [
                       Ink.image(image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> const DetailsPage(),));
                            },
                          ),
                          height: 240,
                          fit: BoxFit.cover,
                       ),
                       Positioned(
                         bottom:10,
                         left:16,
                         child:
                       Container(
                         child: Column(
                           children: [
                             Text(
                               'Title',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                                 fontSize: 24,
                               ),
                             ),
                             SizedBox(
                               height:2,
                             ),
                             Text(
                               'Price',
                               style: TextStyle(
                                 //fontWeight: FontWeight.bold,
                                 color: Colors.white,
                                 fontSize:16,
                               ),
                             ),
                           ],
                         ),
                        ),
                       ),


                  ],
             ),
                  ),
                  SizedBox(width: 12),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Ink.image(image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> const DetailsPage(),));
                              },
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom:10,
                            left:16,
                            child:
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(
                                    height:2,
                                  ),
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  SizedBox(width: 12),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Ink.image(image:NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> const DetailsPage(),));
                              },
                            ),
                            height: 240,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom:10,
                            left:16,
                            child:
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  ),
                                  SizedBox(
                                    height:2,
                                  ),
                                  Text(
                                    'Price',
                                    style: TextStyle(
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize:16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  SizedBox(width: 12),
                   ],
                ),
              ),
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.blue.shade600,
                      ),
                      title: const Text("Rouaa Moustafa"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blue.shade600,
                      ),
                      title: const Text("rouaa.moustafa@gmail.com"),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.password_sharp,
                        color: Colors.blue.shade600,
                      ),
                      title: const Text("1234"),
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex:currentIndex ,
        onItemSelected: (index) {
            setState(() {
              _pageController.jumpToPage(index);
            });
        },
        items:<BottomNavyBarItem>[
          BottomNavyBarItem(title :Text("Home"), icon:Icon(Icons.list)),
          BottomNavyBarItem(title :Text("Location"), icon:Icon(Icons.location_on)),
          BottomNavyBarItem(title :Text("Profile"), icon:Icon(Icons.person))
         ],
        ),
    );

  }
}
