import 'package:flutter/material.dart';

import 'components/contato_widget.dart';
import 'model/contato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ListPage());
  }
}

class ListPage extends StatefulWidget {
  ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Contato> contatos = Contato.contatos;
  int favoritedContacts = 0;
  bool isPressed = false;
  Icon coracaoIcon = Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contatos Favoritos $favoritedContacts',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ContatoWidget(
              contato: contatos[index],
              onPressed: () {
                setState(() {
                  contatos[index].isPressed = !contatos[index].isPressed;

                  if (contatos[index].isPressed) {
                    favoritedContacts += 1;
                  } else {
                    favoritedContacts -= 1;
                  }
                });
              },
              coracaoIcon: contatos[index].isPressed ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ) : coracaoIcon = Icon(Icons.favorite_border));
        },
      ),
    );
  }
}
