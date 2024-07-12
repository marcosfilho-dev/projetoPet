import 'package:flutter/material.dart';
import 'package:login_teste/View/recuperar_senha.dart';
import 'package:login_teste/View/second_page.dart';

import '../View/cadastro.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  //final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: ListView(
          children: [
            Center(
              child: Padding(padding: const EdgeInsets.only(top: 1, left: 16, right: 16),
              child: Image.asset("assets/logo.png",
              height: 300,
              color: Colors.black,),),
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
               
                Padding(
                 padding: const EdgeInsets.only(left: 240),
                 child: TextButton(onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (builder){
                        return const Recaill();
                      },),);
                 },
                  child: const Text('Recuperar senha'),
              ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                      builder: (builder){
                        return  const SecondPage();
                      },),);
                  }, 
                  child: const Text('Entrar'),),
                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  const Center(
                    child:  Text('______ ou ______',
                    style: TextStyle(color: Colors.black),)),

                    const SizedBox(
                      height: 16,
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                      context, MaterialPageRoute(
                      builder: (builder){
                        return  const SecondPage();
                      },),);
                      }, 
                      style: const ButtonStyle(
                       backgroundColor: MaterialStatePropertyAll<Color>(Colors.white)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/google.png",
                            height: 20,),
                            const SizedBox(
                              width: 10,
                            ),

                            const Text('Login com Google',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                            ),
                            textAlign: TextAlign.center,),
                            
                          ],

                      ) ,
                      ),
                  ),
                Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                        onPressed: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (builder){
                              return  const Cadastro();
                            }
                          ),
                          );
                        },
                        child: const Text('Cadastrar?',style: TextStyle(
                          fontSize: 16,
                        ),),
                      ),
                    ),
                  
                  
                  /*Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      height: 35,
                      
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        ),
                        
                      /*child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/google.png",
                          height: 20,),
                          const SizedBox(
                            width: 10,
                          ),

                          const Text('Login com Google',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.center,),
                          
                        ],
                      ),*/
                    ),
                  )*/
               
               
          ],
        ),
            
          
        ),
        
    );
  }
}
