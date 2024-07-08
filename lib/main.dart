import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTC - O Terço Católico',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          TelaInicial(), // Aqui definimos TelaInicial como a tela inicial do aplicativo
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  static const cor_principal = Color.fromARGB(255, 2, 30, 43);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'OTC - O Terço Católico',
            style: TextStyle(
                fontFamily: 'RobotoMono', color: Colors.white, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: cor_principal //const Color.fromARGB(255, 2, 30, 43)
          ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.amber[600],
            child: const Center(
                child: Text('Orações Iniciais:',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 30))),
          ),
          Container(
            height: 100,
            color: Colors.amber[50],
            child: const Center(
                child: Text('Sinal da Cruz',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 25))),
          ),
          Container(
            height: 100,
            color: Colors.amber[600],
            child: const Center(
                child: Text('Credo',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 25))),
          ),
          Container(
            height: 100,
            color: Colors.amber[50],
            child: const Center(
                child: Text(' 1 Pai Nosso',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 25))),
          ),
          Container(
            height: 100,
            color: Colors.amber[600],
            child: const Center(
                child: Text('3 Ave Marias',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 25))),
          ),
          Container(
            height: 100,
            color: Colors.amber[50],
            child: const Center(
                child: Text('Glória ao Pai ...',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 25))),
          ),
          Container(
            height: 50,
            child: const Center(
                child: Text('',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 25))),
          ),
          Container(
            height: 80,
            //color: Colors.amber[600],
            child: ElevatedButton(
              //style: Colors.amber,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
              },
              child: const Text('Iniciar',
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: cor_principal,
                      fontSize: 25)),
            ),
          ),
        ],
      ),
    );
  }
}

class TelaSecundaria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Secundária'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Voltar para Tela Inicial'),
        ),
      ),
    );
  }
}
