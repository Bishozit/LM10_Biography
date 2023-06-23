import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profilestate();
}

class _profilestate extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Lionel Andrés Messi Profile",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
        backgroundColor: Color.fromARGB(255, 133, 42, 9),
      ),
      backgroundColor: Color(0xff2f232f),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              //tileColor: Color(0xff006880),
              tileColor: Color(0xff00665C),
              title: Text(
                "Visiting Card",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 40,
              width: double.infinity,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 85,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8yg3Pk3P5h4W4z8GPDOzdGOSv-xD7v_NxZ99pbelJ9iSg336HHfISvtFADCrpaRiXwPg&usqp=CAU"),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Lionel Andrés Messi',
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              onTap: () {
                print('Email Address of Messi');
              },
              tileColor: Colors.grey,
              leading: Icon(Icons.email, color: Color(0xffffffff)),
              title: Text("messi191@gamil.com",
                  style: TextStyle(color: Color(0xffffffff))),
              trailing: Icon(Icons.arrow_forward, color: Color(0xffffffff)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 12,
            ),
            ListTile(
              onTap: () {
                print('Contact Number');
              },
              tileColor: Colors.blueGrey,
              leading: Icon(Icons.call, color: Color(0xffffffff)),
              title: Text(
                "01700000000",
                style: TextStyle(color: Color(0xffffffff)),
              ),
              trailing: Icon(Icons.arrow_forward, color: Color(0xffffffff)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2020/10/17/13/21/telegram-5662082__340.png"),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQuM0Ro-D1UcRqVLJrwL3uPoWGVF1FmVlxeFgJIN4Gbhwc57ibphcxcvK7o2L4jXq_roo&usqp=CAU"),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/R.84cfedfef24a3f28c8dd2169a190b038?rik=cg64PiljCvgwPw&riu=http%3a%2f%2fdownloads.netmediaeurope.de%2fwp-content%2fuploads%2f2012%2f11%2fwhatsapp-logo.jpg&ehk=TU4SHLgsziXq6PIQLiu99p8eCrj0zoFJztyqrgkIqTg%3d&risl=&pid=ImgRaw&r=0"),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/R.441a42e62f5e058892881248ddfe4cd5?rik=E1OOMoUkIeLw%2fw&riu=http%3a%2f%2ffiles.site-fusion.co.uk%2fwebfusion101281%2fimage%2ftwitterlogo_1.png&ehk=xtrCGXg5mRSE%2fGQy%2bh0%2flzPH0oSn8RXG6SyyjkBSGbQ%3d&risl=&pid=ImgRaw&r=0"),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://blogthinkbig.com/wp-content/uploads/sites/4/2020/06/GitHub-Desktop-Logo.jpg?fit=1500%2C1000"),
                ),
              ],
            )
            // ignore: prefer_const_constructors
          ],
        ),
      ),
    );
  }
}
