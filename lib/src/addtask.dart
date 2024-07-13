import 'package:flutter/material.dart';
import 'detailstask.dart';
import '../main.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  int _groupValue = 0;
  void onChanged(int? value) {
    setState(() {
      _groupValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
      appBar: AppBar(
        title: const Text('Ajouter une tâche'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active),
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Titre',
                    labelStyle: TextStyle(color: Colors.white),
                    
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Contenu',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Text('Priorité', style: TextStyle(color: Colors.white,fontSize: 20)),
              RadioListTile(
                  title: const Text(
                    'Bas',
                    style: TextStyle(color: Colors.white),
                  ),
                  activeColor: Colors.white,
   
                 
                  value: 0,
                  groupValue: _groupValue,
                  onChanged: onChanged),
                   
              RadioListTile(
                  title: const Text('Moyen',
                      style: TextStyle(color: Colors.white)),
                  value: 1,
                  activeColor: const Color.fromARGB(255, 233, 114, 16),  
                  groupValue: _groupValue,
                  onChanged: onChanged),
              RadioListTile(
                  title: const Text('Important',
                      style: TextStyle(color: Colors.white)),
                  value: 2,
                  activeColor: const Color.fromARGB(255, 197, 0, 26),  
                  groupValue: _groupValue,
                  onChanged: onChanged),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Ajouter la tâche',
                    style: TextStyle(color: Color.fromARGB(255, 17, 0, 255))),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 0, 17, 248),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              icon: const Icon(Icons.home),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                // Handle button press
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TaskPage(),
                  ),
                );
              },
              icon: const Icon(Icons.edit_note),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TaskListScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.folder),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
