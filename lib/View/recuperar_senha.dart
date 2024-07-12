// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Recaill extends StatelessWidget {
  const Recaill({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
    AppBar(
      title: const Text('Recuperar Senha'),
    ),
      body: Container(
        decoration: const BoxDecoration(
          color:  Colors.amber
        ),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 16, right: 16),
              child:  const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Nova Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
              child:  const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Confirmar Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))
                  ),
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child: ElevatedButton(
                onPressed: (){}, 
                child: const Text('Alterar Senha')),
            )
          ],
        ),
      ),
    );
  }
}