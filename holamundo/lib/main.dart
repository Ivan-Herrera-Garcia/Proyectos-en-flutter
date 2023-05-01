import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  /*
  Para usar imagenes se debe de habilitar 'assets' en
  pubspec.yaml ademas de utilizar una caja de tamaño
  (SizeDBox) ademas de Image.asset(url) 
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App 1',
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(appBar: AppBar(
        title: const Text('Primera App en Flutter'),
        backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column (
            children: [
              const Padding(padding: EdgeInsets.all(20),
              child: Text('¡Hola mundo en Flutter!', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              )
              ),
              SizedBox(
                height: 300.0,
                width: 300.0,
                //child: Image.asset('assets/pochita.jpeg'), Imagenes de forma local
                child: Image.network('https://raw.githubusercontent.com/Ivan-Herrera-Garcia/Sistema-ABD-SwiftUI/main/AppABC/AppABC/Assets.xcassets/pochita.imageset/pochita.jpeg'), //Imagenes en linea
              )
            ],
          ),
        )
    ));
  }
}