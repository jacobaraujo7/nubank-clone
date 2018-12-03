import 'package:flutter/material.dart';
import 'package:nubank/pages/home/home_page.dart';
import 'package:nubank/pages/perfil_page.dart';
import 'package:nubank/pages/home/widgets/app_bar_home.dart';
import 'package:nubank/pages/home/bloc/bloc_root.dart';
import 'package:nubank/pages/home/bloc/bloc_drag_down.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  BlocRoot bloc = BlocRoot();
  BlocDragDown blocdrag;

  @override
  void initState() {
    positionUpdated.listen((value){
      if(value > 0)
      blocdrag.jumptoBottom();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: GestureDetector(


          onVerticalDragStart: (DragStartDetails value){
            bloc.selectPage.sink.add(true);
            bloc.scroll = true;
            blocdrag = BlocDragDown(positionInit: value.globalPosition.dy,height: MediaQuery.of(context).size.height);
            print("DragStart: ${value.globalPosition.dy}");
          },
          onVerticalDragUpdate: (DragUpdateDetails value){
           blocdrag.changePosition(updated: value.globalPosition.dy);
            //print(value);
          },
          onVerticalDragEnd: (DragEndDetails value){
            blocdrag.velocity = value.velocity.pixelsPerSecond.dy;
            print("DragEnd: $value");
          },
          onTap: (){
            bloc.scroll = false;
            bloc.selectPage.sink.add(!bloc.selectPage.value);
          },
          child: AppBarHome()), preferredSize: Size.fromHeight( MediaQuery.of(context).size.height * 0.13)),
      body: StreamBuilder(
          stream: bloc.selectPage.stream,
          builder: (context, snapshot) {
            return snapshot.hasData? Stack(children: <Widget>[

             HomePage(),
              snapshot.data == true ? PerfilPage(animated: false,scroll: bloc.scroll,) : PerfilPage(animated: true,scroll: bloc.scroll,),

            ],) : Container();
          },
        ),
    );

  }
}
