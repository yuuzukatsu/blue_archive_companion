import 'package:flutter/material.dart';
import 'package:blue_archive_companion/student.dart';
import 'package:blue_archive_companion/raid.dart';
import 'package:blue_archive_companion/challenge.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
              );
            },
          ),

          /*leading: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 255, 255, 255)
          ),*/
          backgroundColor: Colors.blueAccent,
          title: Center(child: Text("Blue Archive Companion")),
          // actions: [Icon(Icons.search)],
        ),
        body: Container(
          child: Center(
            child: Column(children: [

              Image.asset(
                'images/ba.png',
                height: 100,
                fit: BoxFit.fitWidth,
              ),

              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/02.png',
                      height:100,
                      fit: BoxFit.fitHeight,
                      
                    ),
                    
                    Container(
                      child: Center(
                        child: SizedBox(
                          width: 400.0,
                          height: 100,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return StudentList();
                              })); // })); // Material Page Route
                            },
                            
                            child: Text('Student List',style: TextStyle(fontSize: 30)),
                            style: TextButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                      ),
                      width: 400,
                    ),
                  ],
                ),
                width: 500,
                color: Colors.blueAccent,
                margin: EdgeInsets.all(10),
              ),


              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/14.png',
                      height:100,
                      fit: BoxFit.fitHeight,
                      
                    ),
                    
                    Container(
                      child: Center(
                        child: SizedBox(
                          width: 400.0,
                          height: 100,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Raid();
                              })); // })); // Material Page Route
                            }, 
                            
                            child: Text('Total Assault',style: TextStyle(fontSize: 30)),
                            style: TextButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                      ),
                      width: 400,
                    ),
                  ],
                ),
                width: 500,
                color: Colors.blueAccent,
                margin: EdgeInsets.all(10),
              ),


              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/15.png',
                      height:100,
                      fit: BoxFit.fitHeight,
                      
                    ),
                    
                    Container(
                      child: Center(
                        child: SizedBox(
                          width: 400.0,
                          height: 100,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return PVP();
                              })); // })); // Material Page Route
                            },  
                            
                            child: Text('Tactical Challenge',style: TextStyle(fontSize: 30)),
                            style: TextButton.styleFrom(primary: Colors.white)
                          ),
                        ),
                      ),
                      width: 400,
                    ),
                  ],
                ),
                width: 500,
                color: Colors.blueAccent,
                margin: EdgeInsets.all(10),
              ),
              
            ],),
          )
        )
      )
    );
  }
}