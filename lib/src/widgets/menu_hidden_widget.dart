import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';

class TestPage extends StatefulWidget {

  static final routeName = 'test';

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  
  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Pagar",
          colorLineSelected: null,
          baseStyle: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.8),  fontSize: 25, ),
          selectedStyle: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.8),  fontSize: 25,),
        ),
        Container(
          child: Center(
            child: Text("test",
                style: TextStyle(fontFamily: 'monospace'),),
          ),
        )));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Recarga",
          colorLineSelected: Colors.orange,
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 25.0 ),
          selectedStyle: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.8),  fontSize: 25,),
        ),
        Container(
          child: Center(
            child: Text(
              "Screen 2",
              style: TextStyle(color: Colors.white, fontSize: 30.0),
            ),
          ),
        )));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
          initPositionSelected: 0,
          screens: items,
          backgroundColorMenu: Color.fromRGBO(156, 25, 145, 1),
    //    typeOpen: TypeOpen.FROM_RIGHT,
          slidePercent: 70.0,
          verticalScalePercent: 100.0,
    //    contentCornerRadius: 10.0,
    //    iconMenuAppBar: Icon(Icons.menu),
    //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    //    whithAutoTittleName: true,
          styleAutoTittleName: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.7),  fontSize: 20,),
    //    actionsAppBar: <Widget>[],
    //    backgroundColorContent: Colors.blue,
    //    backgroundColorAppBar: Colors.blue,
    //    elevationAppBar: 4.0,
    //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
    //    enableShadowItensMenu: true,
    //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
        );
  }
}