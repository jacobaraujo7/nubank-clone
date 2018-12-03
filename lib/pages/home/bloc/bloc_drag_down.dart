import 'dart:async';

import 'package:rxdart/rxdart.dart';


class BlocDragDown{

  var positionInit;
  double height;
  var positionEnd;
  double velocity;

  BlocDragDown({this.positionInit,this.height});

  void changePosition({double updated}){
        positionEnd = updated;
        if((updated + 2.0) > (height*0.14))
        positionUpdated.sink.add((updated/height - 0.13));
  }

  void jumptoBottom(){

    print("positionEnd:$positionEnd e height: ${height*0.5}");

    if(positionEnd > height*0.2){
      Timer.periodic(Duration(milliseconds: 150), (Timer t){
        print("Timer");
        if(positionEnd >= height)
          t.cancel();
        else{
          changePosition(updated: (positionEnd + 1.0));
        }
      });
    }

  }

  double positionAtual(){

  }

}

var positionUpdated = BehaviorSubject<double>(seedValue: 0.0);