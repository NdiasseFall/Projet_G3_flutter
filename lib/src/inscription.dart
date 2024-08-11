import 'package:flutter/material.dart';

import 'connexion.dart';

class MyPageIns extends StatefulWidget {
  const MyPageIns({super.key});

  @override
  State<MyPageIns> createState() => _MyPageInsState();
}

class _MyPageInsState extends State<MyPageIns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
        appBar: AppBar(
          title: const Text("Glow-Up"),
          backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: const Text("INSCRIPTION",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Nom_Complet ou Pseudo",
                        labelStyle:
                            const TextStyle(color: Colors.white, fontSize: 12),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 226, 218, 218)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 226, 218, 218)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      
                      )
                      
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: Colors.white),
                      labelText: "Adresse mail",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 226, 218, 218)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 226, 218, 218)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                    decoration: InputDecoration(
                      labelText: "Mot de passe",
                      labelStyle: const TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 226, 218, 218)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 226, 218, 218)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                    decoration: InputDecoration(
                      labelText: "Confirmer le mot de passe",
                      labelStyle: const TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 226, 218, 218)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 226, 218, 218)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const TextButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 255, 255, 255)),
                    foregroundColor:
                        WidgetStatePropertyAll(Color.fromARGB(255, 38, 0, 255)),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    fixedSize: WidgetStatePropertyAll(Size(350, 40))),
                child: Text("S'inscrire"),
              ),
              const Text("ou avec", style: TextStyle(color: Colors.white)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.facebook, color: Colors.white)),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Facebook",
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mail, color: Colors.white)),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Gmail",
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Vous avez déjà un compte?",
                      style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyPageConex(),
                        ),
                      );
                    },
                    child: const Text(
                      "Se connecter",
                      style: TextStyle(
                          color: Colors.white,
                          ),
                          
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
