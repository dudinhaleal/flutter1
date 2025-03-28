// main.dart
// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(PrimeiraTela());
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Primeira Página",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
          title: Text("DS 2025", style: TextStyle(color: Colors.white)),

          actions: [
            IconButton(
              onPressed: () {
                print("Botão Presionado");
              },
              icon: Icon(Icons.heart_broken, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                print("Botão Presionado");
              },
              icon: Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                print("Botão Presionado");
              },
              icon: Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 102, 7, 255),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "minha turma é muito legal",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  height: 200,
                  width: 300,
                  color: const Color.fromARGB(255, 26, 9, 126),
                ),
                SizedBox(height: 16),
                Image.asset("thumb-turma-monica.png"),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 68, 14, 138),
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações",
            ),
          ],
        ),
      ),
    );
  }
}
