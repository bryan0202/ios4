import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Interactiva de Flutter Bryan',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );//Fin de materialapp
  }//Fin de widget build
}//Fin de clase myapp

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item('Opcion1',Icon(Icons.android, color: Colors.white,)),
    const Item('Opcion2',Icon(Icons.flag, color: Colors.white,)),
    const Item('Opcion3',Icon(Icons.format_indent_decrease, color: Colors.white,)),
    const Item('Opcion4',Icon(Icons.mobile_screen_share, color: Colors.white,)),
  ];
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  @override
  void initState(){
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('App Interactiva de Flutter Bryan')),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: Image.asset(
                  'images/123.jpg',
                  width: 350,
                  height: 200,
                  fit: BoxFit.cover,
                ),//Fin de image
              ),//Fin de padding
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextFormField(
                  controller: textController1,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'TextField1',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                  ),//Fin de inputdecoration
                ),//Fin de textfield1
              ),//Fin de padding
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextFormField(
                  controller: textController2,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'TextField2',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                  ),//Fin de inputdecoration
                ),//Fin de textfield2
              ),//Fin de padding
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: TextFormField(
                        controller: textController3,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'TextField3',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                        ),//Fin de inputdecoration
                      ),//Fin de textfield3
                    ),//Fin de padding
                  ),//Fin de expanded
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child:  DropdownButton<Item>(
                        hint:  Text("Seleccionar"),
                        value: selectedUser,
                        onChanged: (Item Value) {
                          setState(() {
                            selectedUser = Value;
                        });
                        },
                        items: users.map((Item user) {
                          return  DropdownMenuItem<Item>(
                            value: user,
                            child: Row(
                              children: <Widget>[
                              user.icon,
                              SizedBox(width: 10,),
                              Text(
                                user.name,
                                style:  TextStyle(color: Colors.white),
                              ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),//Fin de dropdownbutton
                    ),//Fin de padding
                  ),//Fin de expanded
                ],//Fin de children de row
              ),//Fin de row
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: RaisedButton(
                      onPressed: () {
                        print('Boton1 presionado');
                      },
                      child: Text('Boton 1', style: TextStyle(color: Colors.black, fontSize: 30), ),
                      color: Colors.grey[300],
                    ),//Fin de button
                  ),//Fin de padding
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: RaisedButton(
                      onPressed: () {
                        print('Boton2 presionado');
                      },
                      child: Text('Boton 2', style: TextStyle(color: Colors.black, fontSize: 30), ),
                      color: Colors.grey[500],
                    ),//Fin de button
                  ),//Fin de padding
                ],//Fin de children de row
              ),//Fin de row
            ],//Fin de children de columna
          ),//Fin de columna
        ),//Fin de safearea
      );//Fin de scaffold
  }//Fin de widget build
}//Fin de clase homestate