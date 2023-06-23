import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class work extends StatelessWidget {
  const work({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2f232f),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(70))),
            title: Text('Lionel Messi Record',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold)),
            centerTitle: true,
            expandedHeight: 100,
            backgroundColor: Color(0xff00665C),
            // flexibleSpace: FlexibleSpaceBar(
            // background: FlutterLogo(),
            //background: Image.asset('image/work.png'),
            //),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              title: Text('1. Club Records ',
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic)),
              subtitle: Text(
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                  "Messi reached 700 goals at club level in Paris' 3-0 win against Marseille on 26 February 2023. Having made his senior competitive debut just past his 17th birthday, he has since rewritten the record books in the UEFA Champions League and Liga. Messi is also second only to Cristiano Ronaldo in the all-time lists for top UEFA club competition scorers (he has 132, Ronaldo 145) and top UEFA Champions League/European Cup scorers (129 compared with Ronaldo's 140). Ronaldo is two years Messi's senior."),
            ),
            ListTile(
              title: Text('2. Champions League records ',
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic)),
              subtitle: Text(
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                  "Most Champions League group stage goals: 80 (71 for Barcelona). Most Champions League round of 16 goals: 29. Most Champions League goals for one club: 120 (Barcelona). Most successive seasons scoring in Champions League: 18"),
            ),
            ListTile(
              title: Text('3. Liga records  ',
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic)),
              subtitle: Text(
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                  "Most Liga goals: 474. Most Liga goals in a single season: 50 (2011/12). Most Liga hat-tricks: 36. Most Liga titles won by foreign player: 10"),
            ),
            ListTile(
              title: Text('4. Individual honours',
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic)),
              subtitle: Text(
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                  "Most Ballon d'Or awards: 7. Most ESM Golden Shoes: 6"),
            ),
            ListTile(
              title: Text('5. Other club records  ',
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic)),
              subtitle: Text(
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                  "Most goals in calendar year: 79 in 2012 (91 including goals for Argentina). Most UEFA club competition goals for single club: 123 (Barcelona)"),
            ),
            ListTile(
              title: Text('6. International records',
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic)),
              subtitle: Text(
                  style: TextStyle(color: Color(0xffffffff), fontSize: 15),
                  ''' As well as lighting up the club game, Messi has thrived on the international stage, sealing his status as an Argentina legend comparable to Diego Maradona when he captained his nation to FIFA World Cup glory at Qatar 2022. He weighed in with two goals against France in the final and also converted his spot kick in the shoot-out as the Albiceleste triumphed on penalties.
                 
Since making his debut in 2005 aged 18 following his starring role in Argentina's FIFA U-20 World Cup win, Messi has won caps for 19 years running and scored in each of the last 18 (up to and including 2023). He also skippered his country to victory at the 2021 Copa América and Finalissima 2022, and is one of just three players to have registered 100 men's international goals.

Most Argentina caps: 174
Most Argentina goals: 102
Most caps for South American nation: 174
Most goals for South American nation: 102
Youngest Argentinian to score at a World Cup: 18 years 357 days
First player to score in four different World Cup tournaments for Argentina
Most individual World Cup appearances: 26
Most Argentina World Cup goals: 13
Only player to score in World Cup group stage, round of 16, quarter-finals, semi-finals and final'''),
            ),
          ]))
        ],
      ),
    );
  }
}
