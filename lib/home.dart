import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profilepage/loginpage.dart';
import 'package:profilepage/player_profile.dart';
import 'package:profilepage/profile.dart';
import 'package:profilepage/work.dart';
//import 'package:profilepage/drawer_demo.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2f232f),
      appBar: AppBar(
        elevation: 0,
        title: Text("Lionel Andrés Messi Biography"),
        backgroundColor: Color.fromARGB(255, 133, 42, 9),
      ),
      //backgroundColor: Color(0xff2f232f),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        //color: Color(0xff2f232f),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => loginpage(
                        //print('User Authentication');
                        )));
                print('User Authentication');
              },
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.login_outlined, color: Color(0xffffffff)),
              title: Text("Log in", style: TextStyle(color: Color(0xffffffff))),
              trailing: Icon(Icons.arrow_forward, color: Color(0xffffffff)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => profile(
                        //print('User Authentication');
                        )));
                print('Visiting Card');
              },
              tileColor: Color(0xff9e9e9e),
              leading: Icon(Icons.person, color: Color(0xffffffff)),
              title:
                  Text("Profile", style: TextStyle(color: Color(0xffffffff))),
              trailing: Icon(Icons.arrow_forward, color: Color(0xffffffff)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => player_profile(
                        //print('User Authentication');
                        )));
                print('Top Sports Player Biography');
              },
              tileColor: Colors.blueGrey,
              leading:
                  Icon(Icons.sports_basketball_sharp, color: Color(0xffffffff)),
              title: Text("Sports", style: TextStyle(color: Color(0xffffffff))),
              trailing: Icon(Icons.arrow_forward, color: Color(0xffffffff)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),

            SizedBox(
              height: 12,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => work(
                        //print('User Authentication');
                        )));
                print("Search to the Job");
              },
              tileColor: Color(0xff9e9e9e),
              leading: Icon(Icons.work, color: Color(0xffffffff)),
              title: Text('Work', style: TextStyle(color: Color(0xffffffff))),
              trailing: Icon(Icons.arrow_forward, color: Color(0xffffffff)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            )

            // ignore: prefer_const_constructors
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff3F1052),
        width: 200,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(120.0)),
        ),
        child: ListView(
          padding: EdgeInsetsDirectional.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Bishozit das"),
              accountEmail: Text("bishozitdas191@gmail.com"),
              currentAccountPicture: CircleAvatar(
                //backgroundColor: Colors.amber,
                //child: Text(
                //"B",
                //style: TextStyle(fontSize: 50, color: Colors.white),
                // ),
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th?id=OIP.FP8wuR2w9ZKyLz8Xjfg8-gHaLH&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 20, 0),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search"),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text("Contact"),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Gmail"),
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

//const Center(
//child: Text('Well Come to our Page'),
//),
