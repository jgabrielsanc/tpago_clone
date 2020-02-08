import 'package:flutter/material.dart';
import 'package:tpagoclone/src/models/biller_model.dart';
import 'package:tpagoclone/src/utils/mock_util.dart';

class BillersPage extends StatelessWidget {

  static final routeName = 'billers';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon:Icon(Icons.arrow_back_ios, size: 20,),
            onPressed:() => Navigator.pop(context, false),
          ),
          centerTitle: false,
          elevation: 0,
          title: Text('Agregar Factura', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 17,),),
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
            hintText: 'Seleccione o busque el destinatario',
            suffixIcon: Icon(Icons.search, color: Colors.grey.withOpacity(0.7),),
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7), fontSize: 18,)
          ),
          onChanged: (value) {
            
          },
      ),
    );
  }

    Widget _listTile() {

    List<Biller> billers = MockData.getBillers;

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: ListView(
          children: _setListTile(billers, () {}),
        ),
      ),
    );
  }

  List<Widget> _setListTile(List<Biller> billers, Function pediente) {
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
            title: Text(biller.name),
            onTap: () {},
          ),
          Divider(thickness: 1.5, height: 0,),
        ],
      );
    }).toList(); 
  }
}