import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:tpagoclone/src/pages/payment_page.dart';
import 'package:tpagoclone/src/pages/recharge_page.dart';
import 'package:tpagoclone/src/widgets/custom_menu_hidden.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleHiddenDrawer(
      contentCornerRadius: 0,
      menu: CustomMenuWidget(),
      slidePercent: 70.0,
      verticalScalePercent: 100.0,
      screenSelectedBuilder: (position,controller) {
        Widget screenCurrent;
        
        switch(position){
          case 0 : 
            screenCurrent = PaymentPage();
            print('pago');
            break;
          case 1 : 
            screenCurrent = PaymentPage(); 
            break;
          case 2 : 
            screenCurrent = PaymentPage(); 
            break;
          case 3 : 
            screenCurrent = RechargePage(); 
            print('recarga');
            break;
        }
        return Scaffold(
          body: screenCurrent,
        );
        
      },
    );
  }
}