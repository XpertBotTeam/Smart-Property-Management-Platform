import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:smart_p_m_p/pages/property_page.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<Image> ImagepropertyList =[
    //Image(image: 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
  ];
    //Property("Beit Merry", true, "lskvnhflfv ksnmldfvknfd klsdfn", ImagepropertyList, 25000, "RENT"),

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Details Page')
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    buildCard(1),
                    SizedBox(width: 12),
                    buildCard(2),
                    SizedBox(width: 12),
                    buildCard(3),
                    SizedBox(width: 12),
                    buildCard(4),
                  ],
                ),
              ),
              ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: SizedBox(
                height: 350,
                //width: 250,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(2),
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment : CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 20,
                          height: 2,
                        ),
                      ),
                      SizedBox(width: 12),
                      ReadMoreText(
                          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase interfaces for iOS and Android apps with the unified codebase interfaces for iOS and Android apps with the unified codebase',
                          trimLines: 3,
                          textAlign: TextAlign.justify,
                          trimMode: TrimMode.Line,
                          trimCollapsedText:" Show More " ,
                          trimExpandedText: " Show Less " ,
                          lessStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        moreStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          height: 2,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                          'Price',
                          style: TextStyle(
                          fontSize: 20,
                          height: 2,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                          'Type',
                           style: TextStyle(
                          fontSize: 20,
                          height: 2,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                          'Availablity',
                          style: TextStyle(
                          fontSize: 20,
                          height: 2,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                          'Contact',
                          style: TextStyle(
                          fontSize: 20,
                          height: 2,
                        ),
                      ),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),

    );




  }
}
Widget buildCard(int index)=> Container(



    child: Center(
      child: Text(
      '$index',
      textScaleFactor: 2,
      style: TextStyle(color: Colors.black),
       ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: Colors.blue,
      boxShadow: [
        BoxShadow(color: Colors.white, spreadRadius: 3),
      ],
    ),
   width: 350,
   height: 350,

);