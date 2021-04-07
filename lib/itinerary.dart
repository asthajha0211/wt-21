import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Itinerary extends StatelessWidget {
  final String time;
  final String content;
  final value;
  const Itinerary({Key key, this.time,this.content,this.value}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Text(
                      time,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xfff5f5f5),
                      ),
                    ),
                  ),
                  Expanded(
                    flex:5,
                    child: DottedLine(
                      direction: Axis.horizontal,
                      dashColor: Color(0xfff5f5f5),
                      dashLength: 1,
                      dashGapLength: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(70, 4, 0, 4),
          child: Container(
            width:312,
            height: 70,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(4),
              ),
              child: Padding(
                padding:EdgeInsets.fromLTRB(8, 8, 4, 6),
                child:Text(
                  content,
                  style: TextStyle(
                    color:Color(0xfff5f5f5),
                    fontSize:17,
                  ),
                ),
              ),
              color:Color(value),

            ),
          ),
        ),
      ],
    );
  }
}