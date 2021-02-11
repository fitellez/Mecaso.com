import 'package:flutter/material.dart';
import 'dart:async';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:intl/intl.dart';

enum SingingCharacter { facebook, whatsapp, email, telefono}

class LoginPage3  extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginPageState3();
  }
}

class LoginPageState3 extends State<LoginPage3> {
  @override
  DateTime selectedDate = DateTime.now();
  String formatted = "";
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
  SingingCharacter _character = SingingCharacter.facebook;
  bool _value1 = false;
  bool _value2 = false;
  String dropdownValue = 'Mediodía';
  String dropdownValue2 = 'San Luis Potosí';


  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        var formatter = new DateFormat('dd/MM/yyyy');
        formatted = formatter.format(picked);
        selectedDate = picked;
        print(formatted);
      });
  }

  Widget build(BuildContext context) {
    //*** Colores para estilos


    MaterialColor colorCustom = MaterialColor(0xFF79114f, color);
    MaterialColor colorCustom2 = MaterialColor(0xFFf7814f, color);
    MaterialColor colorCustom3 = MaterialColor(0xFFa3c01b, color);
    MaterialColor colorCustom4 = MaterialColor(0xFFf7814f, color);
    MaterialColor colorCustom5 = MaterialColor(0xFF199d79, color);
    MaterialColor colorCustom6 = MaterialColor(0xFF3b3c99, color);
    MaterialColor colorCustom7 = MaterialColor(0xFFc91f59, color);


    //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
    void _value1Changed(bool value) => setState(() => _value1 = value);
    void _value2Changed(bool value) => setState(() => _value2 = value);

    return Scaffold(
      appBar: new AppBar(
        title: new Text("Mecaso.com"),
        leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.of(context).pushReplacementNamed('home'),
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
                                'Para mejorar tu experiencia llena los siguientes datos.',
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
                        'Fecha de la boda',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              formatted,
                              style:
                              new TextStyle(fontSize: 20.0, color: colorCustom2,fontWeight: FontWeight.normal),
                            ),

                            SizedBox(height: 20.0,),
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
                                        alignment: Alignment.center,
                                        child: new Text(
                                          'Seleccionar',
                                          textAlign: TextAlign.center,
                                          style:
                                          new TextStyle(fontSize: 20.0, color: Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        _selectDate(context);
                                      }),
                                )
                            ),
                          ],
                        ),
                      ),


                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),


                      //*** Etiqueta simple
                      new Text(
                        'Horario de la boda',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                    Center(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          elevation: 16,
                          style: TextStyle(
                              fontSize: 20.0, color: colorCustom2,fontWeight: FontWeight.normal
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['Mediodía', 'Tarde', 'Noche']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          })
                              .toList(),
                        ),
                    ),




                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      //*** Etiqueta simple
                      new Text(
                        'Ciudad',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),




                      Center(
                        child: DropdownButton<String>(
                          value: dropdownValue2,
                          elevation: 16,
                          style: TextStyle(
                              fontSize: 20.0, color: colorCustom2,fontWeight: FontWeight.normal
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue2 = newValue;
                            });
                          },
                          items: <String>['San Luis Potosí']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          })
                              .toList(),
                        ),
                      ),



                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      //*** Etiqueta simple
                      new Text(
                        'Medio de Contacto preferido',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),


                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      //*** Radio Button
                      /*ListTile(
                        title: new Icon(MdiIcons.facebook, color: colorCustom),
                        leading: Radio(
                          value: SingingCharacter.facebook,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),*/

                      //*** Radio Button
                      ListTile(
                        title: new Icon(MdiIcons.whatsapp, color: colorCustom),
                        leading: Radio(
                          value: SingingCharacter.whatsapp,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),

                      //*** Radio Button
                      ListTile(
                        title: new Icon(MdiIcons.email, color: colorCustom),
                        leading: Radio(
                          value: SingingCharacter.email,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),

                      //*** Radio Button
                      ListTile(
                        title: new Icon(MdiIcons.phone, color: colorCustom),
                        leading: Radio(
                          value: SingingCharacter.telefono,
                          groupValue: _character,
                          onChanged: (SingingCharacter value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),


                      //*** Separación
                      new Text(
                        '',
                        style:
                        new TextStyle(fontSize: 20.0, color: colorCustom,fontWeight: FontWeight.bold),
                      ),



                      //*** Botón de continuar
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
                                  alignment: Alignment.center,
                                  child: new Text(
                                    'Continuar',
                                    textAlign: TextAlign.center,
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
                                  Navigator.of(context).pushReplacementNamed('inicio');
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