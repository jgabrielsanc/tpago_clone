import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/bloc/simple_hidden_drawer_bloc.dart';

class RechargePage extends StatelessWidget {

  final SimpleHiddenDrawerBloc controller;

  RechargePage({this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recargar', style: TextStyle(fontFamily: 'monospace', color: Colors.white.withOpacity(0.7),  fontSize: 20,),),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            controller.toggle();
          }
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Icon(FontAwesomeIcons.ellipsisH, size: 15,)
          )
        ],
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
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.6))
            ),
            contentPadding: EdgeInsets.all(13),
            hintText: 'Nombre, numero o telefono',
            suffixIcon: Icon(Icons.search, color: Colors.grey.withOpacity(0.7),),
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7), fontSize: 18,)
          ),
          onChanged: (value) {
            
          },
      ),
    );
  }

  Widget _listTile() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(Icons.supervised_user_circle),
              ),
              title: Text('Mi telefono', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('849-334-3223'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Divider(thickness: 1.5, height: 0,),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(Icons.supervised_user_circle),
              ),
              title: Text('Mi PayPal', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('jalcantara@test.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            Divider(thickness: 1.5, height: 0,),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.supervised_user_circle),
              ),
              title: Text('Mi PayPal', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('jalcantara@test.com'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}