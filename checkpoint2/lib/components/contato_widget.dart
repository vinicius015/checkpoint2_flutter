import 'package:flutter/material.dart';

import '../model/contato.dart';



class ContatoWidget extends StatelessWidget {
   Contato contato;
    void Function()? onPressed;
    Icon coracaoIcon;


  ContatoWidget({required this.contato, required this.onPressed, required this.coracaoIcon});
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contato.nome),
      subtitle: Text(contato.email),
      trailing: IconButton(
        onPressed: onPressed,
        icon: coracaoIcon,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(contato.iconUrl),
      ),
    );
  }
}
