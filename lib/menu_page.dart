import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'misterios_page.dart';

class MenuPage extends StatelessWidget {
  final List<String> opcoes = [
    'Mistérios Gozosos (segunda-feira e sábado)',
    'Mistérios Dolorosos (terça-feira e sexta-feira)',
    'Mistérios Gloriosos (quarta-feira e domingo)',
    'Mistérios Luminosos (quinta-feira)',
  ];

  static const cor_principal = Color.fromARGB(255, 2, 30, 43);

  static var cor_mist = Colors.amber;

  late final String parametro;
  late final int idMis;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Selecione Os Mistérios',
            style: TextStyle(
                fontFamily: 'RobotoMono', color: Colors.white, fontSize: 20),
          ),
          backgroundColor: cor_principal),
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
          height: 400,
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: opcoes.length,
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: CorLinhs(index),
                textColor: cor_principal,
                title: Text(opcoes[index],
                    style: const TextStyle(
                        fontFamily: 'RobotoMono',
                        color: cor_principal,
                        fontSize: 20)),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Selecionou: ${opcoes[index]}'),
                    ),
                  );
                  parametro = opcoes[index];
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MisteriosPage(
                                data: parametro,
                                idMis: index,
                              )));
                },
              );
            },
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            // ignore: prefer_const_constructors
            child: Text('Voltar'),
          ),
        ),
      ]),
    );
    return scaffold;
  }
}

Color? CorLinhs(int linha) {
  /* var lin = linha;
  var corRet;
  var resto;
  resto = (2 + lin) % 2;
  //print('Resto:');
  //print(resto.toString());
  if (resto == 0) {
    corRet = Colors.amber[600];
  } else {
    corRet = Colors.blue[100];
  }
  return corRet;*/

  var lin = linha;
  Color? corRet;
  if (lin == 0) {
    corRet = Colors.amber[100];
  }

  if (lin == 1) {
    corRet = Colors.green[100];
  }

  if (lin == 2) {
    corRet = Colors.red[100];
  }

  if (lin == 3) {
    corRet = Colors.purple[100];
  }

  return corRet;
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Primeira Página'),
    ),
    body: Center(
      child: ElevatedButton(
        onPressed: () => navegarPaginaM(context),
        child: Text('Ir para Segunda Página'),
      ),
    ),
  );
}
