import 'package:flutter/material.dart';

class Foobar extends StatelessWidget {
  const Foobar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    var screenSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          UnconstrainedBox(
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.red,
              height: screenSizeHeight / 10,
              width: screenSizeWidth - 400,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          UnconstrainedBox(
            child: Container(
              color: Colors.amber,
              height: 90,
              width: 50,
            ),
          )
        ],
      ),
    );
  }
}
