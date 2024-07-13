import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
   const SecondPage({super.key});
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Feed',
      style: optionStyle,
    ),
    Text(
      'Index 1: Explorar',
      style: optionStyle,
    ),
    Text(
      'Index 2: Notificação',
      style: optionStyle,
    ),
    Text('Index 4: Perfil',
    style: optionStyle,
    ),
  ];

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(102, 5, 144, 54),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, 
                icon: Icon(Icons.send), 
                iconSize: 30,
                color: Colors.black,)
              ],

            ),
            Card(
              child: Column(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: SizedBox(
                      height: 250,
                      child: Image.asset("assets/dog2.jpeg",
                      fit: BoxFit.cover,),
                      ),
                  ),
                  

                    const Row(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite_border,
                        size: 30,
                        ),
                      ),
                      Icon(Icons.comment,
                      size: 30,),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.share_rounded,
                        size: 30,),
                      ),
                    ],),
                ],
              ),
              
            ),
            Card(
              child: Column(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: SizedBox(
                      height: 250,
                      child: Image.asset("assets/cat.jpeg",
                      fit: BoxFit.cover,),
                      ),
                  ),
                    const Row(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite_border,
                        size: 30,
                        ),
                      ),
                      Icon(Icons.comment,
                      size: 30,),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.share_rounded,
                        size: 30,),
                      ),
                    ],)
                ],
              ),
              
            ),
          ],
        ),
      ),


      // BottomNavigatorBar começa aqui \\
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Feed',
            backgroundColor: Color.fromARGB(255, 5, 91, 71)),
            BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explorar',
            backgroundColor: Color.fromARGB(255, 5, 91, 71),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificação',
            backgroundColor: Color.fromARGB(255, 5, 91, 71),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: Color.fromARGB(255, 5, 91, 71),
          ),  
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}