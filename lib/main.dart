import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter/widgets.dart';

// ignore: implementation_imports
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wt21/announcements.dart';
import 'package:wt21/dialog.dart';
import 'package:wt21/dialogsponsor.dart';
import 'package:wt21/faq.dart';
import 'package:wt21/itinerary.dart';
import 'package:wt21/speakerscustom.dart';
import 'package:wt21/sponsors.dart';

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

  Color color5 = Color(0xffFC257E);
  Color color6 = Color(0xffA41BE4);
  Color color7 = Color(0xffFC9F25);

  UniqueKey keyTile;
  bool isExpanded = false;

  void expandTile() {
    setState(() {
      isExpanded = true;
      keyTile = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      isExpanded = false;
      keyTile = UniqueKey();
    });
  }

  List<MyItem> items = <MyItem>[
    MyItem(
      header: "Q. If I already applied on DevFolio, Do I need to apply again?",
      body:
          "Yes, because of unforeseen circumstances we had to shift to HackerEarth. You will be an eligible participant only if you register on HackerEarth.",
      hex: 0xffFC257E,
      bodyhex: 0xff341423,
    ),
    MyItem(
      header:
          "Q. Do I need to have any specific qualifications to be a participant for the Hackathon?",
      body: "If you love to code, you are more than welcome to participate in the Hackathon.",
      hex: 0xffA41BE4,
      bodyhex: 0xff271231,
    ),
    MyItem(
      header: "Q. Is it necessary for all participants to belong to the same university?",
      body:
          "No, there are no restrictions regarding universities. Your team can have members from different universities across the globe!",
      hex: 0xffFC9F25,
      bodyhex: 0xff362918,
    ),
    MyItem(
      header:
          "Q. How is the environment? Will your environment support any language? Will you provide any IDE and DB for us to work on ideas?",
      body:
          " You have to develop the entire software application on your local system and submit it on HackerEarth in tar/zip file format along with instructions to run the application and source code.",
      hex: 0xffFC257E,
      bodyhex: 0xff341423,
    ),
    MyItem(
      header:
          " Q. Does one have to be online and available for the entire duration of the Hackathon?",
      body:
          "No, one does not need to be logged in on HackerEarth or be online for the entire duration. You can develop the application on your local system based on the given themes and then submit it on HackerEarth, on the specific challenge page.",
      hex: 0xffA41BE4,
      bodyhex: 0xff271231,
    ),
    MyItem(
      header:
          "Q. Since there is no specific technology mentioned, are there any restrictions on using several pre-built libraries?",
      body:
          "There is no restriction to use any language, technology stack, or libraries. You can use any of them to create a web/mobile application.",
      hex: 0xffFC9F25,
      bodyhex: 0xff362918,
    ),
    MyItem(
      header: "Q. Do I need to give a demo for the product that I have built?",
      body:
          "If you want you can submit a small presentation or video that demos your submission, however, it's not mandatory, and only good to have. In case you are one of the winners, you might be invited to demo your application details of which will be shared with sufficient advance notice.",
      hex: 0xffFC257E,
      bodyhex: 0xff341423,
    ),
    MyItem(
      header: "Q. Do I need to pay any money to register for the hackathon?",
      body: "No. You need not ay any money to register yourself for any hackathon on HackerEarth.",
      hex: 0xffA41BE4,
      bodyhex: 0xff271231,
    ),
    MyItem(
      header:
          "Q. A fully developed application needs to have a solid backend for data storage like SQL, SharePoint etc. since it's online, is it accepted to show only the prototype of it?",
      body:
          "Yes, it's absolutely fine to submit just the prototype. If you use any database like MySQL or PostgresSQL you can also submit a database dump along with your submission. However, you are allowed to submit just the prototype.",
      hex: 0xffFC9F25,
      bodyhex: 0xff362918,
    ),
    MyItem(
      header: "Q. Do I need to pay any money to register for the hackathon?",
      body: "No. You need not ay any money to register yourself for any hackathon on HackerEarth.",
      hex: 0xffFC257E,
      bodyhex: 0xff341423,
    ),
    MyItem(
      header:
          "Q. If it is a team submission, does that mean all team members will have access to work at the same time?",
      body:
          "Yes, all team members can log in from their account and do application submission on HackerEarth",
      hex: 0xffA41BE4,
      bodyhex: 0xff271231,
    ),
    MyItem(
      header: "Q. Do I need to pay any money to register for the hackathon?",
      body: "No. You need not ay any money to register yourself for any hackathon on HackerEarth.",
      hex: 0xffFC9F25,
      bodyhex: 0xff362918,
    ),
    MyItem(
      header:
          "Q. Who will own the IP(Intellectual Property) Rights to the product that I have built?",
      body:
          "The developer/developers of the web/mobile application will have all rights and own the IP of the product. However, all code needs to be in the public domain (open source) so that it can be evaluated by the judges.",
      hex: 0xffFC257E,
      bodyhex: 0xff341423,
    ),
    MyItem(
      header: "Q. I’m interested to participate but I am unable to find a team. What should I do?",
      body: "You can try finding like minded people on our discord server.",
      hex: 0xffA41BE4,
      bodyhex: 0xff271231,
    ),
    MyItem(
      header: "Q. How do I submit what I have made for the Hackathon?",
      body:
          "You have to develop the application on your local system and submit it on HackerEarth in tar/zip file format along with instructions to run the application and source code.",
      hex: 0xffFC9F25,
      bodyhex: 0xff362918,
    )
  ];

  // await FlutterStatusbarcolor.setStatusBarColor(Colors.white);
  // if (useWhiteForeground(Colors.white)) {
  // FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  // } else {
  // FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  // }
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    if (useWhiteForeground(Colors.black)) {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
    } else {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    }
    Container(
      child: new SplashScreen(
        image: new Image.asset('assets/splash.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
      ),
    );
    final tabs = [
      ItineraryPage(),
      SpeakersPage(),
      HomeScreen(),
      Padding(
        padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
        child: Column(
          children: [
            Container(
              child: AppBar(
                title: Text(
                  '#HackLikeAGirl',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
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
        padding: EdgeInsets.fromLTRB(4, 4, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: AppBar(
                title: Text(
                  'Sponsors',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                backgroundColor: Color(0xff131313),
                elevation: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/amagi.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/amagi.png',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/wolframlang.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/wolframlang.png',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/sketch.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/sketch.png',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/spike.png',
                                bodyinfo:
                                    "Spike is an upcoming and trending short videos app built for artists and creators and uses Spaces to help users fond people that create, consume, and find people that create, consume, and enjoy similar content as well as genre.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/spike.png',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/1password.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/1password.png',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/marlabs.jpg',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/marlabs.jpg',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/packt.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/packt.png',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/yocket.jpg',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/yocket.jpg',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/balsamiq.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/balsamiq.png',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 4, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/agora.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/agora.png',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/axure.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/axure.png',
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/nostarchpress.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/nostarchpress.png',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 4, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => SponsorDialog(
                                imgpath: 'assets/kaspersky.png',
                                bodyinfo:
                                    "Amagi, our title sponsor, is a next-gen media & tech company, and the world's leading cloud-managed broadcast services company that provides broadcast and streaming TV solutions to TV networks, content owners and streaming TV platform.",
                              ));
                    },
                    child: Sponsors(
                      imgpath: 'assets/kaspersky.png',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 41,
                child: Text(
                  'F.A.Q.',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      side: new BorderSide(color: Colors.white24, width: 1.0),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: ExpansionPanelList(
                      expandedHeaderPadding: EdgeInsets.zero,
                      dividerColor: Colors.black,
                      expansionCallback: (int index, bool isExpanded) {
                        setState(() {
                          items[index].isExpanded = !items[index].isExpanded;
                          GestureDetector(
                            onTap: () => isExpanded ? shrinkTile() : expandTile(),
                          );
                        });
                      },
                      children: items.map((MyItem item) {
                        return ExpansionPanel(
                          backgroundColor: Color(0xff131313),
                          canTapOnHeader: true,
                          headerBuilder: (BuildContext context, bool isExpanded) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                              child: Text(
                                item.header,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(item.hex),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            );
                          },
                          isExpanded: item.isExpanded,
                          body: Container(
                            color: Color(item.bodyhex),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                              child: Text(
                                item.body,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: SizedBox(
                          height: 41,
                          child: Text(
                            'Contact Us',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            iconSize: 100,
                            icon: Image.asset('assets/discord.png'),
                            onPressed: () async {
                              const url = 'https://dscv.it/wtdiscord';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: IconButton(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                iconSize: 100,
                                icon: Image.asset('assets/insta.png'),
                                onPressed: () async {
                                  const url = 'https://dscv.it/insta';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                          ),
                          Container(
                            child: IconButton(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                iconSize: 100,
                                icon: Image.asset('assets/twitter.png'),
                                onPressed: () async {
                                  const url = 'https://dscv.it/twitter';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                          ),
                          Container(
                            child: IconButton(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                iconSize: 105,
                                icon: Image.asset('assets/mail.png'),
                                onPressed: () async {
                                  const url = 'mailto:dscvit@gmail.com';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                          ),
                        ],
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ],
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
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            // margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black87],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(9.42),
                topLeft: Radius.circular(9.42),
                bottomLeft: Radius.circular(9.42),
                bottomRight: Radius.circular(9.42),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                ),
              ],
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
                  fixedColor: Colors.white,
                  elevation: 5,
                  selectedFontSize: 12,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Color(0xff313131),
                  showSelectedLabels: true,
                  showUnselectedLabels: false,

                  // selectedItemColor: Color(0xffFF1493),
                  // unselectedItemColor: Color(0xffeeeeee),
                  iconSize: 35,
                  selectedLabelStyle: TextStyle(color: Color(0xffffffff)),
                  currentIndex: _currentIndex,
                  items: [
                    BottomNavigationBarItem(
                      label: 'Timeline',
                      icon: SvgPicture.asset(
                        'assets/timeline.svg',
                        height: 25,
                        width: 25,
                        color: color,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Speakers',
                      icon: SvgPicture.asset(
                        'assets/speaker.svg',
                        height: 25,
                        width: 25,
                        color: color1,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: 'Home',
                      icon: Icon(
                        Icons.home,
                        color: color2,
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/highlights.svg',
                        height: 25,
                        width: 25,
                        color: color3,
                      ),
                      label: 'Highlights',
                    ),
                    BottomNavigationBarItem(
                      label: 'Info',
                      icon: SvgPicture.asset(
                        'assets/infos.svg',
                        height: 25,
                        width: 25,
                        color: color4,
                      ),
                    ),
                  ],
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                      // _currentIndex==0?color=Color(0xffff1493):color=Color(0xffeeeeee);
                      color = _currentIndex == 0 ? Color(0xffff1493) : Color(0xffeeeeee);
                      color1 = _currentIndex == 1 ? Color(0xffFC9F25) : Color(0xffeeeeee);
                      color2 = _currentIndex == 2 ? Color(0xffff1493) : Color(0xffeeeeee);
                      color3 = _currentIndex == 3 ? Color(0xffA41BE4) : Color(0xffeeeeee);
                      color4 = _currentIndex == 4 ? Color(0xffff1493) : Color(0xffeeeeee);

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
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 40, 22, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 130,
            width: 410,
            child: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
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
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                icon: Image.asset(
                  'assets/game.png',
                ),
                onPressed: () async {
                  const url1 = 'https://rehaan1.github.io/HishaamManMobileBuild/';
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
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
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
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Announce(
            text1: 'Thank you!',
            text2: 'It was great to have you here! Thank you for participating!',
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
    );
  }
}

class SpeakersPage extends StatelessWidget {
  const SpeakersPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: Text(
            'Speakers',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Color(0xffffffff),
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
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
                hex: 0xffffffff,
                name: 'Vandana Verma',
                infohex: 0xffA41BE4,
                bodyinfo:
                    'Vandana is Security Solutions Architect at IBM India Software Labs. She is a Vice-Chair of the OWASP Global Board of Directors. She leads Diversity Initiatives like InfosecGirls and WoSec. She is also the founder of InfosecKids. She has experience ranging from Application Security to Infrastructure and now dealing with Product Security. She has been Keynote speaker / Speaker / Trainer at various public events including Global OWASP AppSec events to BlackHat events to regional events like BSides events in India.',
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
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => CustomDialogBox(
                hex: 0xffffffff,
                name: 'Usha Rengaraju',
                infohex: 0xffFC257E,
                bodyinfo:
                    'I am a unicorn data scientist with strong foundations in Economics, Finance , Business Foundations ,Business Analytics and Psychology. I specialize in Probabilistic Graphical Models. I have over 7 years of industry experience.I also possess great public speaking and writing skills.I am a champion athlete and have represented my state in National games twice. Open to new opportunities',
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
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => CustomDialogBox(
                hex: 0xffffffff,
                name: 'Lakshya Sivaramakrishnan',
                infohex: 0xffFC9F25,
                bodyinfo:
                    'Managing and Leading the Women Techmakers India program for Google looking to revitalize, grow and nurture the women in technology community in India through collaborations, technical talks and empowerment with the right resources and skills to ensure diversity and inclusion in all developer communities in India. Worked as a Data Scientist at the India Ops Analytics Team at Cerner where I leveraged audit logs for drawing insights on enhancing patient experience and for automating the process of Issue Replication.',
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
    );
  }
}

class ItineraryPage extends StatelessWidget {
  const ItineraryPage({
    Key key,
  }) : super(key: key);

  final List<Itinerary> day1ItineraryData = const [
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
  ];

  final List<Itinerary> day2ItineraryData = const [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 23.04, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: AppBar(
              title: Text(
                'Day 1',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              backgroundColor: Color(0xff131313),
              elevation: 0,
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return day1ItineraryData[index];
            },
            itemCount: day1ItineraryData.length,
          ),
          Container(
            child: AppBar(
              title: Text(
                'Day 2',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              backgroundColor: Color(0xff131313),
              elevation: 0,
            ),
            color: Color(0xff131313),
          ),
          SizedBox(height: 16),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return day2ItineraryData[index];
            },
            itemCount: day1ItineraryData.length,
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
