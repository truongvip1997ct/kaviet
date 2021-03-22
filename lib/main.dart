import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'pages/login_page.dart';
import 'reports/date.dart';
import 'dart:async';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main() {
   runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final storage = new FlutterSecureStorage();
  final _key = "token";

  Future read() async {
    try{

      String tk = await storage.read(key: _key);
      print("Here1: " + tk.toString());
      if(tk != null){
        print("dang nhap thanh cong!");
        //home: DatePickerDemo();
        // Đẩy trang repost vào here`
      }else{


      }

//      if(tk != null){
//        print(tk);
//      }
    }catch(e){
      print(e);
    }

  }



  @override
  Widget build(BuildContext context) {
    read();
    return new MaterialApp(
      title: 'Image Loader',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        accentColor: Colors.redAccent,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.redAccent,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),
      //home: LoginPage(),
      home: DatePickerDemo(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'EN'),
        const Locale('vi', 'VI'),
        const Locale('fr', 'FR')
      ],
    );
  }
}


//class MyApp extends StatelessWidget {
//  final storage = new FlutterSecureStorage();
//  final _key = "token";
//
//  Future read() async {
//    String tk = await storage.read(key: _key);
//    print("Here1: " + tk);
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//
//    return ;
//  }
//}
