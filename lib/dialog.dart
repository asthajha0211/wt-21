import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

            color: Color(hex),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Color(infohex),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    position,
                    style: TextStyle(
                      color: Color(infohex),
                      fontSize: 18,
                        decoration: TextDecoration.none,
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
            // decoration: ShapeDecoration(
            //   color:Color(0xffA41BE4),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(4),
            //   ),
            // ),
            color: Color(infohex),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  bodyinfo,
                style: TextStyle(
                  color:Color(hex),
                  fontSize:14,
                  decoration: TextDecoration.none
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
