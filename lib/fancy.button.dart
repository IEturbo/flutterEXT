import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  FancyButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      RawMaterialButton(
      fillColor: Colors.purpleAccent,
      splashColor: Colors.purpleAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            RotatedBox(
            quarterTurns:3,
            child:Icon(Icons.explore,
              color: Colors.greenAccent,
            )),
            SizedBox(width: 8.0),
            Text(
              "查看我喜欢的收藏",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        )
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
