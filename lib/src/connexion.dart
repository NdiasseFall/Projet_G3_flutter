import 'package:flutter/material.dart';

class MyPageConex extends StatefulWidget {
  const MyPageConex({super.key});

  @override
  State<MyPageConex> createState() => _MyPageConexState();
}

class _MyPageConexState extends State<MyPageConex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 255),
      appBar: AppBar(
        title: const Text("Glow-Up"),
        backgroundColor: const Color.fromARGB(255, 0, 0, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
     body:  Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: const Text("CONNEXION", style: 
                TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
              ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 10),
                 child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: Colors.white),
                    labelText: "Adresse mail",
                     enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 226, 218, 218)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 226, 218, 218)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                               ),
               ),
               Padding(
                 padding: const EdgeInsets.only(bottom:10),
                 child: TextField(
                   style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Mot de passe",
                    labelStyle: const TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 226, 218, 218)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                     focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 226, 218, 218)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                               ),
               ),
              
              const TextButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
                  foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 38, 0, 255)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  fixedSize: WidgetStatePropertyAll(Size(300, 40))
                ),
                child: Text("Se connecter"),
              )
            ],
          ),
        )
    );
  }
}
