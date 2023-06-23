import 'package:flutter/material.dart';
//import 'package:profilepage/sport_model.dart';

class player_profile extends StatefulWidget {
  const player_profile({super.key});

  @override
  State<player_profile> createState() => _player_profileState();
}

class _player_profileState extends State<player_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Top 10 Sports Player Biography",
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
        padding: EdgeInsets.all(20),
        child: RawScrollbar(
            thumbColor: Color(0xffffffff),
            radius: Radius.circular(20),
            thickness: 5,
            child: SingleChildScrollView(
              child: Column(children: [
                // Text(
                //"Top Sports Player ${sportModel.length}",
                // ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: sportModel.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        tileColor: Color(0xff00665C),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage("${sportModel[index].image}"),
                        ),
                        title: Text(
                          "${sportModel[index].name}",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontStyle: FontStyle.italic),
                        ),
                        subtitle: Text(
                          "${sportModel[index].bio}",
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 15),
                        ),
                        trailing: Icon(
                            sportModel[index].Batting_style == false
                                ? Icons.sports_cricket
                                : Icons.sports_soccer ?? Icons.abc,
                            color: Color(0xffffffff)),
                      ),
                    );
                  }),
                )
              ]),
            )),
      ),
    );
  }
}

class SportModel {
  // Model class create
  String? name; // null bole deowa
  int? age;
  bool? Batting_style;
  // ignore: non_constant_identifier_names
  //bool? bowling_style;
  String? bio;
  String? image;

  SportModel(
      {this.name,
      this.age,
      this.Batting_style,
      //this.bowling_style,
      this.image,
      this.bio});
}

List<SportModel> sportModel = [
  // <> -- Generic type
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Lionel Messi",
    age: 35,
    Batting_style: true,
    //bowling_style: true,
    image:
        "https://th.bing.com/th/id/OIP.jMKZI55fPbUtraOQRBuzkQHaE8?w=288&h=192&c=7&r=0&o=5&dpr=1.5&pid=1.7",
    bio:
        "Lionel Messi, in full Lionel Andrés Messi, also called Leo Messi, (born June 24, 1987, Rosario, Argentina), Argentine-born football ",
  ),
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Pele",
    age: 75,
    Batting_style: true,
    //bowling_style: true,
    image:
        "https://th.bing.com/th/id/OIP.jMKZI55fPbUtraOQRBuzkQHaE8?w=288&h=192&c=7&r=0&o=5&dpr=1.5&pid=1.7",
    bio:
        "Edson Arantes do Nascimento (Brazilian Portuguese: [ˈɛdsõ aˈɾɐ̃tʃiz du nasiˈmẽtu]; 23 October 1940 – 29 December 2022), better known by his nickname Pelé (Portuguese pronunciation: [peˈlɛ]), was a Brazilian professional footballer who played as a forward. Widely regarded as one of the greatest players of all time, he was among the most successful and popular sports figures of the 20th century.[2][3] In 1999, he was named Athlete of the Century by the International Olympic Committee and was included in the Time list of the 100 most important people of the 20th century.",
  ),
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Diego Maradona",
    age: 60,
    Batting_style: true,
    //bowling_style: true,
    image:
        "https://th.bing.com/th/id/OIP._5Qn-PQ4B2oPvxIDk2po2AHaJv?w=132&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7",
    bio:
        "Diego Armando Maradona (Spanish: [ˈdjeɣo maɾaˈðona]; 30 October 1960 – 25 November 2020) was an Argentine professional football player and manager. Widely regarded as one of the greatest players in the history of the sport, he was one of the two joint winners of the FIFA Player of the 20th Century award.",
  ),
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Cristiano Ronaldo",
    age: 38,
    Batting_style: true,
    //bowling_style: true,
    image:
        "https://th.bing.com/th/id/OIP.wGx1QHdMAnIos4bnLiQK4AHaEo?w=300&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7",
    bio:
        "Cristiano Ronaldo, born in 1985, is a Portuguese soccer superstar and one of the greatest players of his generation.",
  ),

  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Sachin Tendulkar",
    age: 48,
    Batting_style: false,
    //bowling_style: true,
    image:
        "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316400/316486.png",
    bio:
        "The left-hander is regarded as one of the most exciting prospects in Bangladesh cricket and is arguably the hardest hitter of the cricket ball in the country.",
  ),
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Angel Di María",
    age: 35,
    Batting_style: true,
    //bowling_style: true,
    image: "https://image1.caixin.com/2021-07-11/1625970694128337_840_560.jpg",
    bio:
        "Ángel Fabián Di María (born 14 February 1988) is an Argentine professional footballer who plays for Serie A club Juventus and the Argentina national team. He can play as either a winger or attacking midfielder. Known for his pace, dribbling and agility,[4] Di María is considered to be one of the greatest players of his generation and one of the greatest Argentine players of all time.",
  ),

  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Virat Kohli",
    age: 31,
    Batting_style: false,
    //bowling_style: true,
    image:
        "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/316600/316605.png",
    bio:
        "Virat Kohli was born on 5 November 1988 in Delhi to a Punjabi Khatri Hindu family. His father, Prem Kohli, worked as a criminal lawyer and his mother, Saroj Kohli, is a housewife. He has an older brother, Vikas, and an older sister, Bhawna.",
  ),
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Damián Emiliano Martínez",
    age: 30,
    Batting_style: true,
    //bowling_style: true,
    image:
        "https://th.bing.com/th/id/OIP.DPZIjEcbfvgUg0xx66656QHaFG?w=257&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7",
    bio:
        "Damián Emiliano Martínez (born 2 September 1992) is an Argentine professional footballer who plays as a goalkeeper for Premier League club Aston Villa and the Argentina national team.",
  ),
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Neymar",
    age: 33,
    Batting_style: true,
    //bowling_style: true,
    image: "https://s.hs-data.com/bilder/spieler/gross/142105.jpg",
    bio:
        "Neymar, in full Neymar da Silva Santos, Jr., (born February 5, 1992, Mogi das Cruzes, Brazil), Brazilian football",
  ),
  SportModel(
    // 1 ta index. emon aro onek gula index open korte parbo. 1 ta index r moddhe many index
    name: "Mushfiqur Rahim",
    age: 34,
    Batting_style: false,
    //bowling_style: true,
    image:
        "https://st3.cricketcountry.com/wp-content/uploads/2018/10/Mushfiqur-Rahim-Getty.jpg",
    bio:
        "Mushfiqur Rahim (Bengali: মুশফিকুর রহিম; born 9 May 1987) is a Bangladeshi cricketer and the former captain and vice-captain of the Bangladesh national cricket team. He is a right-handed middle-order batsman and wicket-keeper in the Bangladesh Cricket Team.",
  ),
]; // <> -- Generic type
