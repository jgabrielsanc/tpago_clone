import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';

class CustomMenuWidget extends StatefulWidget {

  @override
  _CustomMenuWidgetState createState() => _CustomMenuWidgetState();
}

class _CustomMenuWidgetState extends State<CustomMenuWidget> {

  final textStyle = TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,  fontSize: 18, );

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 13),
        color: Color.fromRGBO(156, 25, 145, 1),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 125, top: 25, bottom: 25),
                height: 50,
                child: Image(
                  image: NetworkImage('https://www.paypalobjects.com/digitalassets/c/website/marketing/latam/do/top-up/logos/img_tpago-white_logo.png?01AD=38Q8wVzLpsB8jCkRPwFOXrixwMgk2p8rzp8sESrvtfsUY8Pqvrk3nSQ&01RI=3B8043C00A6A776&01NA=na'),
                ),
              ),
              ListTile(
                leading: Icon(Icons.attach_money, color: Colors.white.withOpacity(0.8), size: 40,),
                title: Text('PAGAR', style: textStyle,),
                onTap: () {
                  SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(0);
                },
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.local_grocery_store, color: Colors.white.withOpacity(0.8), size: 40,),
                title: Text('COMPRAR', style: textStyle,),
                onTap: () {
                  SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(1);
                },
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.compare_arrows, color: Colors.white.withOpacity(0.8), size: 40,),
                title: Text('TRANSFERIR', style: textStyle,),
                onTap: () {
                  SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(2);
                },
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.phone_android, color: Colors.white.withOpacity(0.8), size: 40,),
                title: Text('RECARGAR', style: textStyle,),
                onTap: () {
                  SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(3);
                },
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.account_balance_wallet, color: Colors.white.withOpacity(0.8), size: 40,),
                title: Text('RETIRAR', style: textStyle,),
                onTap: () {
                  SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(0);
                },
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(Icons.account_balance, color: Colors.white.withOpacity(0.8), size: 40,),
                title: Text('CUENTAS', style: textStyle,),
                onTap: () {
                  SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(0);
                },
              ),
              SizedBox(height: 30,),
              ListTile(
                leading: Icon(FontAwesomeIcons.umbrella, color: Colors.white.withOpacity(0.8), size: 37,),
                title: Text('MICROSEGUROS', style: textStyle,),
                onTap: () {
                  SimpleHiddenDrawerProvider.of(context).setSelectedMenuPosition(0);
                },
              ),
              SizedBox(height: 30,),
           
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Text('Ajustes', style: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,  fontSize: 16, ),)
                    ),
                  SizedBox(width: 115,),
                  Text('Salir', style: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.bold,  fontSize: 16, ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}