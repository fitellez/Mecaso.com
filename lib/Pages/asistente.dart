import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum SingingCharacter { f, m }

class LoginPage5  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginPageState5();
  }
}

class LoginPageState5 extends State<LoginPage5> {
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
                                'Ingresa tu presupuesta para encontrar tus opciones.',
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
                            //*** Etiqueta simple
                            new Text(
                              '# Invitados',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child:   //*** Etiqueta simple
                            //*** Input para nombre
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                              child: SizedBox(
                                height: 45.0,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: colorCustom,
                                  ),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      labelStyle: TextStyle(
                                        color:colorCustom,
                                      )
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Por favor introduzca su teléfono';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),





                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            new Text(
                              'Presupuesto Total:',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child:   //*** Etiqueta simple
                            //*** Input para nombre
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                              child: SizedBox(
                                height: 45.0,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: colorCustom,
                                  ),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      labelStyle: TextStyle(
                                        color:colorCustom,
                                      )
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Por favor introduzca su teléfono';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),


                      Container(
                        height: 6,
                      ),




                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            new Text(
                              'CATEGORÍA',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child:   //*** Etiqueta simple
                            //*** Input para nombre
                            new Text(
                              'PRESUPUESTO',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),



                      Container(
                        height: 1,
                        color: colorCustom,
                      ),



                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            new Text(
                              'Banquete',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child:   //*** Etiqueta simple
                            //*** Input para nombre
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                              child: SizedBox(
                                height: 45.0,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: colorCustom2,
                                  ),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom2,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom2,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      labelText: "\$",
                                      labelStyle: TextStyle(
                                        color:colorCustom2,
                                      )
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Por favor introduzca su teléfono';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),




                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            new Text(
                              'Salón',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child:   //*** Etiqueta simple
                            //*** Input para nombre
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                              child: SizedBox(
                                height: 45.0,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: colorCustom3,
                                  ),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom3,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom3,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      labelText: "\$",
                                      labelStyle: TextStyle(
                                        color:colorCustom3,
                                      )
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Por favor introduzca su teléfono';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),



                      Row(
                        children: <Widget>[
                          Expanded(
                            child:
                            //*** Etiqueta simple
                            new Text(
                              'Música',
                              style:
                              new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child:   //*** Etiqueta simple
                            //*** Input para nombre
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                              child: SizedBox(
                                height: 45.0,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: colorCustom4,
                                  ),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom4,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: colorCustom4,
                                        ),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      labelText: "\$",
                                      labelStyle: TextStyle(
                                        color:colorCustom4,
                                      )
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Por favor introduzca su teléfono';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),





                      //*** Botón de registrarme
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                          child: SizedBox(
                            height: 45.0,
                            child: new RaisedButton(
                                elevation: 2.0,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0)),
                                color: colorCustom,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: new Text(
                                    'Buscar',
                                    textAlign: TextAlign.left,
                                    style:
                                    new TextStyle(fontSize: 20.0, color: Colors.white),
                                  ),
                                ),
                                onPressed: () {
                                  /*if(_validateAndSave()) {
                            requestLoginAPI(context, _email, _password);
                          }
                          else {*/
                                  print("Login");
                                  Navigator.of(context).pushReplacementNamed('resultados');
                                  //}
                                }),
                          )
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