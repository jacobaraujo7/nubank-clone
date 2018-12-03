import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0,right: 22.0),
      child: Container(
        constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 0.6,
            minHeight: MediaQuery.of(context).size.height * 0.6),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(2.0)),
        child: Stack(
          children: <Widget>[
            new Positioned(
                top: 20.0,
                left: 20.0,
                child: Icon(
                  Icons.credit_card,
                  size: 40.0,
                  color: Colors.grey.shade700,
                )),
            new Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: 30.0,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      "FATURA ATUAL",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                    ),
                    new Text("R\$: 539,22",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize:
                            MediaQuery.of(context).size.width * 0.10)),
                    new Row(
                      children: <Widget>[
                        new Text(
                          "Limite disponível ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize:
                              MediaQuery.of(context).size.width * 0.05),
                        ),
                        new Text(
                          "R\$ 539,22",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize:
                              MediaQuery.of(context).size.width * 0.05),
                        )
                      ],
                    )
                  ],
                )),
            new Positioned(
              bottom: 0.0,
              child: new Container(
                color: Colors.grey.shade300,
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: MediaQuery.of(context).size.height * 0.15,
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    minHeight: MediaQuery.of(context).size.height * 0.15),
                child: Center(
                  child: new ListTile(
                    title: Text(
                        "Compra mais recente em Pag*Sorvetesrequibom no valor de RS 6,30 terça"),
                    leading: Icon(Icons.fastfood),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
              ),
            ),
            new Positioned(
                top: 35.0,
                right: 20.0,
                child: new Container(
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width * 0.03,
                        minHeight: MediaQuery.of(context).size.height * 0.30,
                        maxWidth: MediaQuery.of(context).size.width * 0.03,
                        maxHeight: MediaQuery.of(context).size.height * 0.30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: new Column(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: new Container(
                                color: Colors.deepOrange,
                              )),
                          Expanded(
                              flex: 2,
                              child: new Container(
                                color: Colors.blue,
                              )),
                          Expanded(
                              flex: 2,
                              child: new Container(
                                color: Colors.green,
                              )),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
