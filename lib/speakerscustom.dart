import 'package:flutter/material.dart';

class SpeakersCustom extends StatelessWidget {
  final String imgpath;
  final hex;
  final String text;
  final String subtext;
  final String infosmall;

  const SpeakersCustom({Key key, this.imgpath, this.hex, this.text, this.subtext, this.infosmall})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 0, 19, 0),
          child: Container(
            height: 270,
            width: 359,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgpath),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Color(hex).withOpacity(0.6), BlendMode.srcOver),
              ),

              borderRadius: BorderRadius.only(
                topRight: Radius.circular(4),
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 27,
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height:8),
                  Text(
                    subtext,
                    style: TextStyle(
                      fontSize: 18,
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height:4),
                  Text(
                    infosmall,
                    style: TextStyle(
                      fontSize: 14,
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 21),
      ],
    );
  }
}
