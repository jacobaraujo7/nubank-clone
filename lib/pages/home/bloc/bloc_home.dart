import 'package:rxdart/rxdart.dart';

class BlocHome{

  var positionPage = BehaviorSubject<int>(seedValue: 0);

  void pageChange({int index}){
    positionPage.sink.add(index);
  }


  dispose(){
    positionPage.close();
  }


}