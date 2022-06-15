import 'package:app1/utils/routes.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart'; 
import 'pages/loginpage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home:HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness:Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.indigo),
      
      routes: {
        "/": ((context) => LoginPage()),
        Myroutes.homeROute:(context)=> HomePage(),
        Myroutes.loginRoute:(context) => LoginPage() 
      }
    );
  }
}