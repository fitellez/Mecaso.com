import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_launch/flutter_launch.dart';

class LoginPage2  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginPageState2();
  }
}

class LoginPageState2 extends State<LoginPage2> {
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
    MaterialColor colorCustom3 = MaterialColor(0xFFa3c01b, color);
    MaterialColor colorCustom4 = MaterialColor(0xFFf7814f, color);
    MaterialColor colorCustom5 = MaterialColor(0xFF199d79, color);
    MaterialColor colorCustom6 = MaterialColor(0xFF3b3c99, color);
    return Scaffold(
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


                        //*** Etiqueta simple
                        new Text(
                          'USUARIO NUEVO',
                          style:
                          new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
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
                                color: colorCustom2,
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
                                  Navigator.of(context).pushReplacementNamed('home');
                                  //}
                                }),
                          )
                      ),





                      //***Botón de entrar con Facebook
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                          child: SizedBox(
                            height: 45.0,
                            child: new RaisedButton(
                                elevation: 2.0,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0)),
                                color: colorCustom3,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: new Text(
                                    'Entrar con Facebook',
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
                                  Navigator.of(context).pushReplacementNamed('home');
                                  //}
                                }),
                          )
                      ),



                      //*** Etiqueta simple
                      new Text(
                        'USUARIO EXISTENTE',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),


                      //*** Input para usuario
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
                              labelText: 'Usuario',
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


                      //*** Input para contraseña
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
                                labelText: 'Contraseña',
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


                      //*** Botón para acceder, función de verificación de acceso
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                          child: SizedBox(
                            height: 45.0,
                            child: new RaisedButton(
                                elevation: 2.0,
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(10.0)),
                                color: colorCustom6,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: new Text(
                                    'Entrar',
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
                                  Navigator.of(context).pushReplacementNamed('home');
                                  //}
                                }),
                          )
                      ),



                      //*** Botón para recuperar contraseña
                GestureDetector(
                    onTap: () {
                      print("Olvidé mi contraseña presionado");
                    },
                  child: Padding(
                          padding: EdgeInsets.fromLTRB(180.0, 7.0, 0.0, 7.0),
                          child: SizedBox(
                            height: 55.0,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: new Text(
                                    'Olvidé mi contraseña',
                                    textAlign: TextAlign.center,
                                    style:
                                    new TextStyle(fontSize: 14.0, color: colorCustom,decoration: TextDecoration.underline),
                                  ),
                                ),
                          )
                      ),
                ),



                      //*** Botón para contacto por WhatsApp
                GestureDetector(
                    onTap: () {
                      print("Contacto whats presionado");
                      whatsAppOpen();
                    },
                    child:
                      Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
                          child: SizedBox(
                            height: 45.0,
                            child: Row(
                                  children: <Widget>[
                                    new Icon(MdiIcons.whatsapp, color: colorCustom),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: new Text(
                                        'Contáctanos',
                                        textAlign: TextAlign.left,
                                        style:
                                        new TextStyle(fontSize: 20.0, color: colorCustom),
                                      ),
                                    ),
                                  ],
                               ),
                          )
                      ),
                ),



                      //*** Botón para recuperar contraseña
                      GestureDetector(
                        onTap: () {
                          print("Aviso de privacidad");
                          Navigator.of(context).pushReplacementNamed('privacidad');
                        },
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(180.0, 7.0, 0.0, 7.0),
                            child: SizedBox(
                              height: 55.0,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: new Text(
                                  'Aviso de privacidad',
                                  textAlign: TextAlign.center,
                                  style:
                                  new TextStyle(fontSize: 14.0, color: colorCustom,decoration: TextDecoration.underline),
                                ),
                              ),
                            )
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

//Widget para Logotipo
Widget _showLogo() {
  return new Hero(
      tag: 'Mecaso.com',
      child: Padding(
          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 80.0, //Tamaño del radio de la imagen (width)
            child: Image.asset('images/logotipo.png',scale:0.5),
          )));
}

void whatsAppOpen() async {
  await FlutterLaunch.launchWathsApp(phone: "5214446701283", message: "Hola, me gustaría contactarlos para obtener más información");
}