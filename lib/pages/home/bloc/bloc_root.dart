import 'package:rxdart/rxdart.dart';


class BlocRoot{

  var selectPage = BehaviorSubject<bool>(seedValue: false);
  bool scroll;

  BlocRoot(){
    scroll = false;
  }

}