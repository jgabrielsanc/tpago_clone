import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/bloc/simple_hidden_drawer_bloc.dart';

class PaymentPage extends StatelessWidget {

  final SimpleHiddenDrawerBloc controller;

  PaymentPage({this.controller});

  static final routeName = 'payment';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagar', style: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.7),  fontSize: 20,),),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              controller.toggle();
            }),
      ),
    );
  }
}