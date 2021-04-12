import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: implementation_imports
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wt21/announcements.dart';
import 'package:wt21/dialog.dart';
import 'package:wt21/itinerary.dart';
import 'package:wt21/speakerscustom.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 2;
  Color color = Color(0xffeeeeee);
  Color color1 = Color(0xffeeeeee);
  Color color2 = Color(0xffeeeeee);
  Color color3 = Color(0xffeeeeee);
  Color color4 = Color(0xffeeeeee);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 23.04, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: AppBar(
                title: Text(
                  'Day 1',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Color(0xff131313),
                elevation: 0,
              ),
            ),
            Itinerary(
              time: '10:00am',
              content: 'Opening Ceremony',
              value: 0xffA41BE4,
            ),
            Itinerary(
              time: '04:00pm',
              content: 'Workshop by Kaspersky',
              value: 0xffFC257E,
            ),
            Itinerary(
              time: '06:00pm',
              content: 'Ice Breaker Session',
              value: 0xffFC9F25,
            ),
            Itinerary(
              time: '09:00pm',
              content: 'Technical Review 1',
              value: 0xffA41BE4,
            ),
            Itinerary(
              time: '11:00pm',
              content: 'Game Night',
              value: 0xffFC257E,
            ),
            Container(
              child: AppBar(
                title: Text(
                  'Day 2',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Color(0xff131313),
                elevation: 0,
              ),
              color: Color(0xff131313),
            ),
            SizedBox(height: 16),
            Itinerary(
              time: '10:00am',
              content: 'Community Activity',
              value: 0xffFC9F25,
            ),
            Itinerary(
              time: '02:00pm',
              content: 'Exploring Kaggle Talk',
              value: 0xffA41BE4,
            ),
            Itinerary(
              time: '03:00pm',
              content: 'Workshop by Agora',
              value: 0xffFC257E,
            ),
            Itinerary(
              time: '04:00pm',
              content: 'Technical Review 2',
              value: 0xffFC9F25,
            ),
            Itinerary(
              time: '07:00pm',
              content: 'Final Pitch',
              value: 0xffA41BE4,
            ),
            Itinerary(
              time: '08:50pm',
              content: 'Winners Declared',
              value: 0xffFC257E,
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      Column(
        children: [
          AppBar(
            title: Text(
              'Speakers',
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color(0xff131313),
            elevation: 0,
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => CustomDialogBox(
                  hex:0xffffffff,
                  name:'Vandana Verma',
                  infohex: 0xffA41BE4,
                  bodyinfo:'Vandana is Security Solutions Architect at IBM India Software Labs. She is a Vice-Chair of the OWASP Global Board of Directors. She leads Diversity Initiatives like InfosecGirls and WoSec. She is also the founder of InfosecKids. She has experience ranging from Application Security to Infrastructure and now dealing with Product Security. She has been Keynote speaker / Speaker / Trainer at various public events including Global OWASP AppSec events to BlackHat events to regional events like BSides events in India.' ,
                  position: 'Global BoD at OWASP, InfoSecKids & InfoSecGirls',
                ),
              );
            },
            child: SpeakersCustom(
              imgpath: 'assets/vandana.jpg',
              hex: 0xffA41BE4,
              text: 'Vandana Verma',
              subtext: 'Global BoD',
              infosmall: 'OWASP, InfoSecKids & InfoSecGirls',
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => CustomDialogBox(
                  hex:0xffffffff,
                  name:'Usha Rengaraju',
                  infohex: 0xffFC257E,
                  bodyinfo:'I am a unicorn data scientist with strong foundations in Economics, Finance , Business Foundations ,Business Analytics and Psychology. I specialize in Probabilistic Graphical Models. I have over 7 years of industry experience.I also possess great public speaking and writing skills.I am a champion athlete and have represented my state in National games twice. Open to new opportunities' ,
                  position: 'Data Science Consultant at Infinite-Sum Modeling Inc.',
                ),
              );
            },
            child: SpeakersCustom(
              imgpath: 'assets/usha.jpg',
              hex: 0xffFC257E,
              text: 'Usha Rengaraju',
              subtext: 'Data Science Consultant',
              infosmall: 'Infinite-Sum Modeling Inc.',
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => CustomDialogBox(
                  hex:0xffffffff,
                  name:'Lakshya Sivaramakrishnan',
                  infohex: 0xffFC9F25,
                  bodyinfo:'Managing and Leading the Women Techmakers India program for Google looking to revitalize, grow and nurture the women in technology community in India through collaborations, technical talks and empowerment with the right resources and skills to ensure diversity and inclusion in all developer communities in India. Worked as a Data Scientist at the India Ops Analytics Team at Cerner where I leveraged audit logs for drawing insights on enhancing patient experience and for automating the process of Issue Replication.' ,
                  position: 'Program Lead at Women Techmakers India',
                ),
              );
            },
            child: SpeakersCustom(
              imgpath: 'assets/lakshya.jpg',
              hex: 0xffFC9F25,
              text: 'Lakshya Sivaramakrishnan',
              subtext: 'Program Lead',
              infosmall: 'Women Techmakers India',
            ),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(17, 40, 22, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 130,
              width: 410,
              child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/discord.svg',
                  ),
                  onPressed: () async {
                    const url = 'https://dsv.it/wtdiscord';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
            ),
            SizedBox(
              height: 130,
              width: 410,
              child: IconButton(
                  icon: Image.asset(
                    'assets/game.png',
                  ),
                  onPressed: () async {
                    const url1 =
                        'https://rehaan1.github.io/HishaamManMobileBuild/';
                    if (await canLaunch(url1)) {
                      await launch(url1);
                    } else {
                      throw 'Could not launch $url1';
                    }
                  }),
            ),
            SizedBox(height: 4),
            SizedBox(
              height: 41,
              width: 120,
              child: Text(
                'Upcoming',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
                child: Container(
                  color: Color(0xff131313),
                  child: Card(
                    elevation: 0,
                    color: Color(0xff131313),
                    child: Text(
                      "Thank you for participating in WomenTechies'21",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 41,
              width: 120,
              child: Text(
                'Announcements',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
            Announce(
              text1: 'Thank you!',
              text2:
                  'It was great to have you here! Thank you for participating!',
              colorhex: 0xffA41BE4,
            ),
            Announce(
              text1: 'The Grand Prize',
              text2: 'TechDivas',
              colorhex: 0xffff1493,
            ),
            Announce(
              text1: 'First Runner Up',
              text2: 'Troubleshooters',
              colorhex: 0xffFC9F25,
            ),
            Announce(
              text1: 'Second Runner Up',
              text2: 'HackLikeAGirl',
              colorhex: 0xffA41BE4,
            ),
            Announce(
              text1: 'Best Women Centric Idea',
              text2: 'Team Bubbles',
              colorhex: 0xffff1493,
            ),
            Announce(
              text1: "Best Freshers' Idea",
              text2: 'Codedotpy',
              colorhex: 0xffFC9F25,
            ),
            Announce(
              text1: 'Treasure Hunt Winner',
              text2: 'Shashank Suresh',
              colorhex: 0xffA41BE4,
            ),
            Announce(
              text1: 'HisomMan Challenge',
              text2: 'Shashank Suresh (@sushi)',
              colorhex: 0xffff1493,
            ),
            Announce(
              text1: 'Twitter',
              text2: 'Lily Khan',
              colorhex: 0xffFC9F25,
            ),
            Announce(
              text1: 'Instagram',
              text2: 'Megha Maitin (@megha_maitin)',
              colorhex: 0xffA41BE4,
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
        child:Column(
          children:[
            Container(
              child:AppBar(
                title: Text(
                    '#HackLikeAGirl',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize:28,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                backgroundColor: Color(0xff131313),
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
        child:Column(
          children:[
            Container(
              child:AppBar(
                title: Text(
                  'Sponsors',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize:28,
                    fontWeight:FontWeight.bold,
                  ),
                ),
                backgroundColor: Color(0xff131313),
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: tabs[_currentIndex],
        ),
      ),
      backgroundColor: Color(0xff131313),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(9.42),
            topLeft: Radius.circular(9.42),
            bottomLeft: Radius.circular(9.42),
            bottomRight: Radius.circular(9.42),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(9.42),
            topRight: Radius.circular(9.42),
            bottomLeft: Radius.circular(9.42),
            bottomRight: Radius.circular(9.42),
          ),
          child: SizedBox(
            height: 75,
            child: BottomNavigationBar(
              selectedFontSize: 12,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff313131),
              showSelectedLabels: true,
              showUnselectedLabels: false,
              // selectedItemColor: Color(0xffFF1493),
              // unselectedItemColor: Color(0xffeeeeee),
              iconSize: 28,
              selectedLabelStyle: TextStyle(color: Color(0xffffffff)),
              currentIndex: _currentIndex,
              items: [
                BottomNavigationBarItem(
                  label: 'Timeline',
                  icon: SvgPicture.asset(
                    'assets/timeline.svg',
                    height: 28,
                    width: 28,
                    color: color,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: color1,
                  ),
                  label: 'Speakers',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: color2,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    color: color3,
                  ),
                  label: 'Highlights',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.info,
                    color: color4,
                  ),
                  label: 'Info',
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  // _currentIndex==0?color=Color(0xffff1493):color=Color(0xffeeeeee);
                  color = _currentIndex == 0
                      ? Color(0xffff1493)
                      : Color(0xffeeeeee);
                  color1 = _currentIndex == 1
                      ? Color(0xffFC9F25)
                      : Color(0xffeeeeee);
                  color2 = _currentIndex == 2
                      ? Color(0xffff1493)
                      : Color(0xffeeeeee);
                  color3 = _currentIndex == 3
                      ? Color(0xffA41BE4)
                      : Color(0xffeeeeee);
                  color4 = _currentIndex == 4
                      ? Color(0xffff1493)
                      : Color(0xffeeeeee);

                  // if (_currentIndex==0)
                  //   {
                  //     color=Color(0xffff1493);
                  //   }else{
                  //   color=Color(0xffeeeeee);
                  //}
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
