import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SponsorDialog extends StatelessWidget {
  final String imgpath, bodyinfo;

  const SponsorDialog({Key key, this.imgpath, this.bodyinfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 60, 32, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.white24),
                left: BorderSide(width: 1.0, color: Colors.white24),
                right: BorderSide(width: 1.0, color: Colors.white24),
                bottom: BorderSide(width: 1.0, color: Colors.white24),
              ),
            ),
            height: 100,
            width: 360,

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(imgpath),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff313131),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0),
              ),
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.white24),
                left: BorderSide(width: 1.0, color: Colors.white24),
                right: BorderSide(width: 1.0, color: Colors.white24),
                bottom: BorderSide(width: 1.0, color: Colors.white24),
              ),
            ),
            width: 360,
            // decoration: ShapeDecoration(
            //   color:Color(0xffA41BE4),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(4),
            //   ),
            // ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  bodyinfo,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        decoration: TextDecoration.none),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
