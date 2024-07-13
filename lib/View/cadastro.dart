import 'package:flutter/material.dart';
import 'package:login_teste/View/my_home_page.dart';


class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: const Color(0xFF055B47),
      title: const Text('Cadastro', style: TextStyle(
        color: Colors.white
      ),)),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
              const Padding(
                padding: EdgeInsets.only(left: 16,right: 16, top: 50),
                child: Expanded(
                     child: TextField(
                      decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        )
                      ),
                      hoverColor: Colors.white,
                      labelText: 'Email'
                               ),
                               
                               ), 
             
                   ),
                         ),
             
               const SizedBox(
                height: 20,
               ),
               
               const Padding(
                 padding: EdgeInsets.only(left: 16,right: 16),
                 child: Expanded(
                   child: TextField(
                    decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    hoverColor: Colors.white,
                    labelText: 'Senha'
                             ),
                             
                             ),         
                 ),
               ),
               const Padding(
                 padding: EdgeInsets.only(left: 16,right: 16, top: 16),
                 child: Expanded(
                   child: TextField(
                    decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    hoverColor: Colors.white,
                    labelText: 'Comfirmar Senha'
                             ),
                             
                             ),         
                 ),
               ),
                 Padding(
                  padding: const EdgeInsets.only(top: 200,left: 16, right: 16),
                  child: Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                              context, MaterialPageRoute(
                                builder: (builder){
                                  return  const MyHomePage();
                                }
                              ),
                              );
                      },
                      child: const  Text('Cadastrar',
                      style: TextStyle(
                        color: Color.fromARGB(255, 5, 91, 71)
                      ),),
                    ),
                  ),
                ),
               
          ],
        ),
      ),
    );
    
  }
}