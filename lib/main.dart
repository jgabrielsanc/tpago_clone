import 'package:flutter/material.dart';
import 'package:tpagoclone/src/pages/billers_page.dart';
import 'package:tpagoclone/src/pages/home_page.dart';
import 'package:tpagoclone/src/pages/payment_page.dart';
import 'package:tpagoclone/src/widgets/menu_hidden_widget.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tPago Clone',
      initialRoute: 'home',
      routes: {
        // PaymentPage.routeName : (BuildContext context) => PaymentPage(),
        // TestPage.routeName : (BuildContext context) => TestPage(),
        'home' : (BuildContext context) => HomePage(),
        'billers' : (BuildContext context) => BillersPage()
      },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(156, 25, 145, 1),
      ),
    );
  }
}