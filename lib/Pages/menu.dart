import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum SingingCharacter { f, m }

class LoginPage7  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginPageState7();
  }
}

class LoginPageState7 extends State<LoginPage7> {
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
    MaterialColor colorCustom2 = MaterialColor(0xFF1da5b2, color);
    MaterialColor colorCustom3 = MaterialColor(0xFFc91f59, color);
    MaterialColor colorCustom4 = MaterialColor(0xFFa3c01b, color);
    MaterialColor colorCustom5 = MaterialColor(0xFF199d79, color);
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
          onPressed:() => Navigator.of(context).pushReplacementNamed('inicio'),
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
                                '',
                                textAlign: TextAlign.left,
                                style:
                                new TextStyle(fontSize: 18.0, color: colorCustom),
                              ),
                            ),
                          ),
                          Expanded(
                            child:  _showLogo(),
                          ),

                        ],
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            Image.asset('images/iconos/1_novia.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/2_novio.png'),
                          )
                        ],
                      ),




                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            Image.asset('images/iconos/3_banquetes.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/4_jardines.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/5_musica.png'),
                          ),
                        ],
                      ),



                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            Image.asset('images/iconos/6_bebidas.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/7_fotografia.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/8_flores.png'),
                          ),
                        ],
                      ),



                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            Image.asset('images/iconos/9_wedding.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/10_reposteria.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/11_hoteles.png'),
                          ),
                        ],
                      ),



                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            Image.asset('images/iconos/12_autos.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/13_invitaciones.png'),
                          ),
                          Expanded(
                            child:
                            Image.asset('images/iconos/14_luna_de_miel.png'),
                          ),
                        ],
                      )




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