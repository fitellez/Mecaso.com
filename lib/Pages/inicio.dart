import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum SingingCharacter { f, m }

class LoginPage4  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginPageState4();
  }
}

class LoginPageState4 extends State<LoginPage4> {
  @override
  final _formkey = new GlobalKey<FormState>();
  //*** Requerido para opacidad
  Map<int, Color> color =
  {
    50:Color.fromRGBO(136,14,79, .1),
    100:Color.fromRGBO(136,14,79, .2),
    200:Color.fromRGBO(136,14,79, .3),
    300:Color.fromRGBO(136,14,79, .4),
    400:Color.fromRGBO(136,14,79, .5),
    500:Color.fromRGBO(136,14,79, .6),
    600:Color.fromRGBO(136,14,79, .7),
    700:Color.fromRGBO(136,14,79, .8),
    800:Color.fromRGBO(136,14,79, .9),
    900:Color.fromRGBO(136,14,79, 1),
  };

  Widget build(BuildContext context) {
    //*** Colores para estilos


    MaterialColor colorCustom = MaterialColor(0xFF79114f, color);
    MaterialColor colorCustom2 = MaterialColor(0xFFa3c01b, color);
    MaterialColor colorCustom3 = MaterialColor(0xFFf7814f, color);
    MaterialColor colorCustom4 = MaterialColor(0xFF1da5b2, color);
    MaterialColor colorCustom5 = MaterialColor(0xFF304f6d, color);
    MaterialColor colorCustom6 = MaterialColor(0xFFc91f59, color);
    MaterialColor colorCustom7 = MaterialColor(0xFFc91f59, color);
    SingingCharacter _character = SingingCharacter.f;
    bool _value1 = false;
    bool _value2 = false;

    //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
    void _value1Changed(bool value) => setState(() => _value1 = value);
    void _value2Changed(bool value) => setState(() => _value2 = value);

    return Scaffold(
      appBar: new AppBar(
        title: new Text("Mecaso.com"),
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.of(context).pushReplacementNamed('datos'),
        ),
      ),
      body:
      new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("images/fondo.png"), fit: BoxFit.cover,),
          ),
          child:
          new Form(
              key: _formkey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                    children: <Widget>[
                      _showLogo(),

                      Container(
                        height: 1,
                        color: colorCustom,
                      ),

                      Container(
                        height: 6,
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            new Icon(MdiIcons.account, color: colorCustom2, size: 50),
                          ),
                          Expanded(
                            flex: 3,
                            child:   //*** Etiqueta simple
                            new Text(
                              'Nombre del usuario\nFecha de la boda',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.normal),
                            ),
                          ),

                        ],
                      ),

                      Container(
                        height: 6,
                      ),

                      Container(
                        height: 1,
                        color: colorCustom,
                      ),

                      Container(
                        height: 10,
                      ),



                      GestureDetector(
                        onTap: () {
                          print("Mi boda presionado");
                          Navigator.of(context).pushReplacementNamed('datos');
                        },
                        child:
                        Row(
                          children: <Widget>[
                            Expanded(
                              child:
                              //*** Etiqueta simple
                              new Icon(MdiIcons.ring, color: colorCustom3,size: 50),
                            ),
                            Expanded(
                              flex: 3,
                              child:   //*** Etiqueta simple
                              new Text(
                                'Mi boda',
                                style:
                                new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),



                GestureDetector(
                  onTap: () {
                    print("asistente presionado ");
                    Navigator.of(context).pushReplacementNamed('asistente');
                  },
                  child:  Row(
                    children: <Widget>[
                      Expanded(
                        child:
                        //*** Etiqueta simple
                        new Icon(MdiIcons.autoFix, color: colorCustom4,size: 50,),
                      ),
                      Expanded(
                        flex: 3,
                        child:   //*** Etiqueta simple
                        Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child:  new Text(
                                'Asistente',
                                style:
                                new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                              ),
                            ),
                            new Text(
                              'Te ayudamos a encontrar tus posibles proveedores en base a tu presupuesto',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),


                      GestureDetector(
                        onTap: () {
                          print("Explorar presionado");
                          Navigator.of(context).pushReplacementNamed('menu');
                        },
                        child:
                        Row(
                          children: <Widget>[
                            Expanded(
                              child:
                              //*** Etiqueta simple
                              new Icon(MdiIcons.magnify, color: colorCustom5,size: 50),
                            ),
                            Expanded(
                              flex: 3,
                              child:   //*** Etiqueta simple
                              new Text(
                                'Explorar',
                                style:
                                new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),


                      GestureDetector(
                        onTap: () {
                          print("Favoritos presionado");
                        },
                        child:
                        Row(
                          children: <Widget>[
                            Expanded(
                              child:
                              //*** Etiqueta simple
                              new Icon(MdiIcons.heart, color: colorCustom6,size: 50),
                            ),
                            Expanded(
                              flex: 3,
                              child:
                              //*** Etiqueta simple
                              new Text(
                                'Mis favoritos',
                                style:
                                new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),




                    ]
                ),
              )
          )
      ),
    );
  }
}

Widget _showLogo() {
  return new Hero(
      tag: 'Mecaso.com',
      child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 80.0,
            child: Image.asset('images/logotipo.png',scale:0.5),
          )));
}