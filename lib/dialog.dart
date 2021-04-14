import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialogBox extends StatelessWidget {
  final hex, infohex;
  final String name, position, bodyinfo;

  const CustomDialogBox(
      {Key key,
      this.hex,
      this.infohex,
      this.name,
      this.position,
      this.bodyinfo})
      : super(key: key);

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
              color: Color(hex),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
              border: Border(
                top: BorderSide(width: 1.0, color: Color(infohex)),
                left: BorderSide(width: 1.0, color: Color(infohex)),
                right: BorderSide(width: 1.0, color: Color(infohex)),
                bottom: BorderSide(width: 1.0, color: Color(infohex)),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(infohex),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    position,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(infohex),
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(infohex),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0),
              ),
              border: Border(
                top: BorderSide(width: 1.0, color: Color(infohex)),
                left: BorderSide(width: 1.0, color: Color(infohex)),
                right: BorderSide(width: 1.0, color: Color(infohex)),
                bottom: BorderSide(width: 1.0, color: Color(infohex)),
              ),
            ),
            // decoration: ShapeDecoration(
            //   color:Color(0xffA41BE4),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(4),
            //   ),
            // ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                bodyinfo,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Color(hex),
                      fontSize: 14,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
