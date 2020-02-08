import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/provider/simple_hidden_drawer_provider.dart';
import 'package:tpagoclone/src/models/biller_model.dart';
import 'package:tpagoclone/src/pages/billers_page.dart';
import 'package:tpagoclone/src/utils/constants_utlis.dart';
import 'package:tpagoclone/src/utils/mock_util.dart';

class PaymentPage extends StatefulWidget {

  static final routeName = 'payment';

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          elevation: 0,
          centerTitle: false,
          title: Text('Pagar', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 17,),),
          leading: IconButton(
            icon: Icon(Icons.list, size: 28,),
            onPressed: () {
              SimpleHiddenDrawerProvider.of(context).toggle();
            }
          ),
          actions: <Widget>[
            IconButton(
              iconSize: 25,
              icon: Icon(FontAwesomeIcons.qrcode),
              onPressed: () {},
            ),
            SizedBox(width: 135,),
            PopupMenuButton(
              onSelected: _selectedMenuButton,
              elevation: 1,
              itemBuilder: (context) {
                return Constants.billChoices.map((String choice) {
                  return PopupMenuItem<String>(
                    height: 45,
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
              icon: Icon(FontAwesomeIcons.ellipsisH, size: 17,),
            ),
            
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          _searchInput(),
          _listTile()
        ],
      ),
    );
  }

    _selectedMenuButton(String choice) {
    if (choice == Constants.addBiller) {
      print("Adding");
      Navigator.pushNamed(context, BillersPage.routeName);
    } else if (choice == Constants.removeBiller) {
      print("removing");
    }
  }

  Widget _searchInput() {
    return Container(
        child: TextField(
          // controller: _editingController,
          style: TextStyle(fontSize: 24),
          
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.6))
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.6))
            ),
            contentPadding: EdgeInsets.all(13),
            hintText: 'Nombre, numero o facturador',
            suffixIcon: Icon(Icons.search, color: Colors.grey.withOpacity(0.7),),
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7), fontSize: 18,)
          ),
          onChanged: (value) {
            
          },
      ),
    );
  }

  Widget _listTile() {

    List<Biller> biller = MockData.getSelectedBillers;

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: ListView(
          children: _setListTile(biller),
        ),
      ),
    );
  }

  List<Widget> _setListTile(List<Biller> billers) {
    return billers.map((biller){
      return Column(
        children: <Widget>[
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Image(
                image: NetworkImage(biller.logo, scale: 9),
              ),
            ),
            title: Text(biller.name, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(biller.contract),
            onTap: () {},
          ),
          Divider(thickness: 1.5, height: 0,),
        ],
      );
    }).toList(); 
  }
}
