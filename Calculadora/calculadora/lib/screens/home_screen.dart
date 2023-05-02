// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* AppBar
      appBar: AppBar(
        title: Text('Calculadora'),
        elevation: 0,
      ),

      body: currentPage == 0
            ? CustomPage(color: Color.fromARGB(255, 55, 61, 57))
            : CustomPage2(color: Color.fromARGB(255, 60, 65, 61)),
            //Cambio de pantallas, ? es {} y : es else {}


      //* Tabs
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;
          setState(() {});
        },
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate_outlined), label: 'Calculadora'),
          BottomNavigationBarItem(
              icon: Icon(Icons.co_present), label: 'Autor'),
        ],
      ),
    );
  }
}

class CustomPage extends StatelessWidget {
  final Color color;
  final TextEditingController _controller = TextEditingController();

  CustomPage({required this.color});
 

  @override
  Widget build(BuildContext context) {
    String operacion = "";
    int num1 = 0;
    int num2 = 0;
    return Padding(padding: EdgeInsets.all(16.0),
    child: Container(
      color: color,
      child: Center(
        child: Column (children: [
          TextField( controller: _controller,
          keyboardType: TextInputType.number, 
          decoration: InputDecoration(
          labelText: operacion,
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.calculate_outlined),
          filled: false,
          fillColor: Colors.grey[200],
                          
          ),),
          ElevatedButton(onPressed:() {
          //Accion a ejecutar
         // num1 = _controller.text as Float;
         // _controller.text = "";
          }, 
          child: Text('+')),
          ElevatedButton(onPressed:() {
          //Accion a ejecutar
         // num1 = _controller.text as Float;
         // _controller.text = "";
          }, 
          child: Text('=')) //Texto
        ],
        ))
        ),
      );
    
  }
}

class CustomPage2 extends StatelessWidget {
  final Color color;

  const CustomPage2({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column (
            children: [
              const Padding(padding: EdgeInsets.all(20),
              child: Text('¡Saludos!', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              )
              ),
              SizedBox(
                height: 300.0,
                width: 300.0,
                child: Image.network('https://dthezntil550i.cloudfront.net/u1/latest/u12108230856157280000169619/1280_960/4ab19acf-13cd-402c-a966-38f815c3c43f.png'), //Imagenes en linea
              )
            ],
          ),
        )
    );
  }
}
