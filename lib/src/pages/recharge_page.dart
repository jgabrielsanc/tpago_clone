import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/provider/simple_hidden_drawer_provider.dart';

class RechargePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          centerTitle: false,
          elevation: 0,
          title: Text('Recargar', style: TextStyle(fontFamily: 'monospace', color: Colors.white,  fontSize: 17,),),
          leading: IconButton(
            icon: Icon(Icons.list, size: 28,),
            onPressed: () {
              SimpleHiddenDrawerProvider.of(context).toggle();
            }
          ),
          actions: <Widget>[
            IconButton(
              iconSize: 17,
              icon: Icon(FontAwesomeIcons.ellipsisH),
              onPressed: () {},
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