import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_app/Pages/login.dart';
import 'package:flutter_app/Pages/home.dart';
import 'package:flutter_app/Pages/datos.dart';
import 'package:flutter_app/Pages/inicio.dart';
import 'package:flutter_app/Pages/asistente.dart';
import 'package:flutter_app/Pages/resultados.dart';
import 'package:flutter_app/Pages/menu.dart';
import 'package:flutter_app/Pages/plantilla.dart';
import 'package:flutter_app/Pages/privacidad.dart';
import 'package:flutter_app/Pages/terminos.dart';


class FluroRouter{
  static Router router = Router();

  static Handler loginHandler2 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage()
  );

  static Handler loginHandler = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage2()
  );

  static Handler loginHandler3 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage3()
  );

  static Handler loginHandler4 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage4()
  );

  static Handler loginHandler5 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage5()
  );

  static Handler loginHandler6 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage6()
  );

  static Handler loginHandler7 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage7()
  );

  static Handler loginHandler8 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage8()
  );

  static Handler loginHandler9 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage9()
  );

  static Handler loginHandler10 = Handler (
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage10()
  );

  static void setupRouter() {
    router.define('login', handler: loginHandler);
    router.define('home', handler: loginHandler2);
    router.define('datos', handler: loginHandler3);
    router.define('inicio', handler: loginHandler4);
    router.define('asistente', handler: loginHandler5);
    router.define('resultados', handler: loginHandler6);
    router.define('menu', handler: loginHandler7);
    router.define('plantilla', handler: loginHandler8);
    router.define('privacidad', handler: loginHandler9);
    router.define('terminos', handler: loginHandler10);
  }
}
