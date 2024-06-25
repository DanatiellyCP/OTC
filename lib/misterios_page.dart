import 'package:flutter/material.dart';
import 'package:otc/menu_page.dart';

class MisteriosPage extends StatelessWidget {
  final String data;

  const MisteriosPage({required this.data, required int idMis});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: Text('Contenplando os mistérios'),
          backgroundColor: Color.fromARGB(149, 18, 147, 228),
        ),
        body: Column(
          children: [
            Center(child: Text(data)),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
                child: Text('Voltar'),
              ),
            ),
          ],
        ));
    return scaffold;
  }
}

navegarPaginaM(BuildContext context) {
  return context;
}

/*
onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          },


*/
