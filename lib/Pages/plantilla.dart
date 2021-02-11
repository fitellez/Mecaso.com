import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum SingingCharacter { f, m }

class LoginPage8  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginPageState8();
  }
}

class LoginPageState8 extends State<LoginPage8> {
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
    MaterialColor colorCustom2 = MaterialColor(0xFF494e56, color);
    MaterialColor colorCustom3 = MaterialColor(0xFFc91f59, color);
    MaterialColor colorCustom4 = MaterialColor(0xFFa3c01b, color);
    MaterialColor colorCustom5 = MaterialColor(0xFFf81415, color);
    MaterialColor colorCustom6 = MaterialColor(0xFF3b3c99, color);
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
          onPressed:() => Navigator.of(context).pushReplacementNamed('asistente'),
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


                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            Align(
                              alignment: Alignment.centerLeft,
                              child: new Text(
                                'BANQUETES BOUNAROTTI',
                                textAlign: TextAlign.left,
                                style:
                                new TextStyle(fontSize: 18.0, color: colorCustom,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child:
                            new Icon(MdiIcons.heart, color: colorCustom5,size: 25),
                          ),
                          Expanded(
                            child:  _showLogo(),
                          ),

                        ],
                      ),



                      //*** Íconos redes sociales
                      Row(
                        children: <Widget>[
                          new Icon(MdiIcons.facebook, color: colorCustom2,size: 25),
                          new Icon(MdiIcons.whatsapp, color: colorCustom2,size: 25),
                          new Icon(MdiIcons.twitter, color: colorCustom2,size: 25),
                          new Icon(MdiIcons.instagram, color: colorCustom2,size: 25),
                        ],
                      ),

                      Container(
                        height: 5,
                      ),

                      Container(
                        height: 1,
                        color: colorCustom,
                      ),
                      FittedBox(
                        child: Image.asset('images/imagen1.png'),
                        fit: BoxFit.fill,
                      ),
                      Container(
                        height: 1,
                        color: colorCustom,
                      ),


                      Container(
                        height: 5,
                      ),



                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            Align(
                              alignment: Alignment.centerLeft,
                              child: new Text(
                                'Servicio para comida o cena \n\n Rango de precios \$350 - \$500 por persona \n\n Incluye mobiliario',
                                textAlign: TextAlign.left,
                                style:
                                new TextStyle(fontSize: 18.0, color: colorCustom,fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ],
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
            radius: 40.0,
            child: Image.asset('images/logotipo.png',scale:0.5),
          )));
}

Widget _showImage() {
  return new Hero(
      tag: 'Mecaso.com',
      child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 40.0,
            child: Image.asset('images/imagen1.png',scale:0.5),
          )));
}