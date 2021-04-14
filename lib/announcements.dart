import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Announce extends StatelessWidget {
  final String text1;
  final String text2;
  final colorhex;

  const Announce({Key key, this.text1, this.text2, this.colorhex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          // width: 312,
          // height: 111,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SvgPicture.asset(
                    'assets/announcement.svg',
                    color: Color(colorhex),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xfff5f5f5),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          text2,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xfff5f5f5),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            color: Color(0xff313131),
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
