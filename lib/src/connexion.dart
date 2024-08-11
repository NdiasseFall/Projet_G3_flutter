import 'package:flutter/material.dart';
import 'inscription.dart';
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
     body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: const Text("CONNEXION",
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
                    style: const TextStyle(color: Colors.white,fontSize: 12),
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
                    style: const TextStyle(color: Colors.white,fontSize: 12),
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
                    fixedSize: WidgetStatePropertyAll(Size(340, 40))),
                child: Text("connecter"),
              ),
           const  Padding(
               padding:  EdgeInsets.only(top: 10),
               child:  Text("ou avec", style: TextStyle(color: Colors.white)),
             ),
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
                    builder: (context) => const MyPageIns(),
                  ),
                );
                    },
                    child: const Text("S'inscrire",
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
