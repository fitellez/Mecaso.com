import 'package:flutter/material.dart';

enum SingingCharacter { f, m }

class LoginPage  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
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
bool _isChecked = true;
SingingCharacter _character = SingingCharacter.f;

Widget build(BuildContext context) {
  //*** Colores para estilos


  MaterialColor colorCustom = MaterialColor(0xFF79114f, color);
  MaterialColor colorCustom2 = MaterialColor(0xFF1da5b2, color);
  MaterialColor colorCustom3 = MaterialColor(0xFFa3c01b, color);
  MaterialColor colorCustom4 = MaterialColor(0xFFf7814f, color);
  MaterialColor colorCustom5 = MaterialColor(0xFF199d79, color);
  MaterialColor colorCustom6 = MaterialColor(0xFF3b3c99, color);
  MaterialColor colorCustom7 = MaterialColor(0xFFc91f59, color);



  return Scaffold(
    appBar: new AppBar(
      title: new Text("Mecaso.com"),
      leading: IconButton(icon:Icon(Icons.arrow_back),
        onPressed:() => Navigator.of(context).pushReplacementNamed('login'),
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
                              'NUEVO USUARIO',
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


                    //*** Etiqueta simple
                    new Text(
                      'USUARIO NUEVO',
                      style:
                      new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                    ),



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
                              labelText: 'Nombre',
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



                    //*** Etiqueta simple
                    new Text(
                      'SEXO',
                      style:
                      new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                    ),


                  //*** Radio Button sexo
                  Row(
                      children: <Widget>[
                  Expanded(
                  child://*** Radio Button
                  ListTile(
                      title: const Text('F'),
                  leading: Radio(
                    value: SingingCharacter.f,
                    groupValue: _character,
                    onChanged: (SingingCharacter value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                  ),
                        Expanded(
                          child:       //*** Radio Button
                          ListTile(
                            title: const Text('M'),
                            leading: Radio(
                              value: SingingCharacter.m,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ]),







                    //*** Input para edad
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
                              labelText: 'Edad',
                              labelStyle: TextStyle(
                                color:colorCustom3,
                              )
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Por favor introduzca su contraseña';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),



                    //*** Input para teléfono
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
                              labelText: 'Teléfono',
                              labelStyle: TextStyle(
                                color:colorCustom4,
                              )
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Por favor introduzca su contraseña';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),



                    //*** Input para Email
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                      child: SizedBox(
                        height: 45.0,
                        child: TextFormField(
                          style: TextStyle(
                            color: colorCustom5,
                          ),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorCustom5,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorCustom5,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: 'Correo electrónico',
                              labelStyle: TextStyle(
                                color:colorCustom5,
                              )
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Por favor introduzca su contraseña';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),



                    //*** Input para contraseña
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                      child: SizedBox(
                        height: 45.0,
                        child: TextFormField(
                          style: TextStyle(
                            color: colorCustom6,
                          ),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorCustom6,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorCustom6,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: 'Contraseña',
                              labelStyle: TextStyle(
                                color:colorCustom6,
                              )
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Por favor introduzca su contraseña';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),



                    //*** Input para repetir contraseña
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                      child: SizedBox(
                        height: 45.0,
                        child: TextFormField(
                          style: TextStyle(
                            color: colorCustom6,
                          ),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorCustom6,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: colorCustom6,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: 'Repetir contraseña',
                              labelStyle: TextStyle(
                                color:colorCustom6,
                              )
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Por favor introduzca su contraseña';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),



                    new CheckboxListTile(
                      value: _isChecked,
                      checkColor: colorCustom,
                      onChanged: (val) {
                        setState(() {
                          _isChecked = val;
                          print("Check");
                          print(val);
                        });
                      },
                      title: GestureDetector(
                        onTap: () {
                          print("Términos y condiciones presionado");
                        },
                        child: new Text(
                          'Acepto los',
                            style:
                            new TextStyle(fontSize: 16.0, color: colorCustom,fontWeight: FontWeight.bold),
                        ),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      subtitle: GestureDetector(
                        onTap: () {
                          print("Términos y condiciones presionado");
                          Navigator.of(context).pushReplacementNamed('terminos');
                        },
                        child: new Text(
                            'Términos y Condiciones de esta App',
                            style:
                            new TextStyle(fontSize: 14.0, color: colorCustom,fontWeight: FontWeight.normal,decoration: TextDecoration.underline),
                        ),
                      ),
                      activeColor: Colors.white,
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
                              color: colorCustom7,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: new Text(
                                  'Registrarme',
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
                                Navigator.of(context).pushReplacementNamed('datos');
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