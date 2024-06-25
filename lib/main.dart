import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orações iniciais'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(149, 18, 147, 228),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
              //MaterialPageRoute(builder: (context) => MenuPage());
            );
          },
          child: Text('Iniciar'),
        ),
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
