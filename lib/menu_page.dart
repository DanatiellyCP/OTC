import 'package:flutter/material.dart';
import 'misterios_page.dart';

class MenuPage extends StatelessWidget {
  final List<String> opcoes = [
    'mistérios gozosos (segunda-feira e sábado)',
    'mistérios dolorosos (terça-feira e sexta-feira)',
    'mistérios gloriosos (quarta-feira e domingo)',
    'mistérios luminosos (quinta-feira)'
  ];

  late final String parametro;
  late final int idMis;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Selecione o mistério do terço'),
        backgroundColor: Color.fromARGB(149, 18, 147, 228),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: opcoes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(opcoes[index]),
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
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ),
        ],
      ),
    );
  }
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
