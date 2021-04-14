import 'package:flutter/cupertino.dart';

class Sponsors extends StatelessWidget {
  final imgpath;

  const Sponsors({Key key, this.imgpath})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
        child: Container(
          // color: Color(0xffffffff),
          height: 50,
          width: 123,
          decoration: BoxDecoration(
            color:Color(0xffffffff),
            image: DecorationImage(
              image: AssetImage(imgpath),
              fit: BoxFit.contain,
            ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(4),
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
        ),
      ),
    );
  }
}
