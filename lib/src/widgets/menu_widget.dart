import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _background(context),
          _options()
        ],
        
      ),
    );
  }

  _options() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.attach_money, color: Colors.white, size: 40,),
          title: Text('PAGAR', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 20),),
        ),
        SizedBox(height: 30,),
        ListTile(
          leading: Icon(Icons.local_grocery_store, color: Colors.white, size: 40,),
          title: Text('COMPRAR', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 20),),
          onTap: () {},
        ),
        SizedBox(height: 30,),
        ListTile(
          leading: Icon(Icons.compare_arrows, color: Colors.white, size: 40,),
          title: Text('TRANSFERIR', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 20),),
          onTap: () {},
        ),
        SizedBox(height: 30,),
        ListTile(
          leading: Icon(Icons.phone_android, color: Colors.white, size: 40,),
          title: Text('RECARGAR', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 20),),
          onTap: () {
          },
        ),
        SizedBox(height: 30,),
        ListTile(
          leading: Icon(Icons.account_balance_wallet, color: Colors.white, size: 40,),
          title: Text('RETIRAR', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 20),),
          onTap: () {
          },
        ),
        SizedBox(height: 30,),
        ListTile(
          leading: Icon(Icons.account_balance, color: Colors.white, size: 40,),
          title: Text('CUENTAS', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 20),),
          onTap: () {
          },
        ),
        SizedBox(height: 30,),
        ListTile(
          leading: Icon(Icons.security, color: Colors.white, size: 40,),
          title: Text('MICROSEGUROS', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 20),),
          onTap: () {
          },
        ),
      ],
    );
  }

  _background(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}