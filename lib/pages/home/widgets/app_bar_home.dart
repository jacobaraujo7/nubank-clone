import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color.fromRGBO(109, 33, 119, 1.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/nubank.png",
                  width: 50.0,
                  height: 30.0,
                  color: Colors.white,
                  fit: BoxFit.fitHeight,
                ),
                new Text(
                  "Sara",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize:
                      MediaQuery.of(context).size.width * 0.06),
                )
              ],
            ),
            Center(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
