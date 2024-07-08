import 'package:flutter/material.dart';
import 'package:otc/menu_page.dart';

class MisteriosPage extends StatelessWidget {
  final String data;
  static const cor_principal = Color.fromARGB(255, 2, 30, 43);

  const MisteriosPage({required this.data, required int idMis});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: const Text('Contenplando os mistérios:',
              style: TextStyle(
                  fontFamily: 'RobotoMono', color: Colors.white, fontSize: 20)),
          backgroundColor: cor_principal,
        ),
        body: Column(
          children: [
            Container(
                width: double.infinity,
                height: 80,
                child: Text(' ' + data,
                    style: const TextStyle(
                      fontFamily: 'RobotoMono',
                      color: cor_principal,
                      fontSize: 20,
                    ))),
            Container(
              width: double.infinity,
              height: 80,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuPage()));
                },
                child: const Text('Voltar',
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 20)),
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
