import 'package:flutter/material.dart';
import 'addtask.dart';
import '../main.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  bool val1 = false;
  void getChange1(bool s) {
    setState(() {
      val1 = s;
    });
  }

  final List<Color> itemColors = [
    const Color.fromARGB(255, 0, 217, 255),
    const Color.fromARGB(255, 233, 114, 16),
    const Color.fromARGB(255, 197, 0, 26)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
      appBar: AppBar(
        title: const Text('Ma liste de tâches'),
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
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (ctx, index) {
          final task = tasks[index];
          return Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
              child: Column(
                children: [
                  Container(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), // Rayon de 10 pixels
                      border: Border.all(
                        color: itemColors[task.priority], // Couleur de la bordure
                        width: 2, // Largeur de la bordure
                      ),
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // Couleur de fond
                    ),
                    
                    child: ListTile(
                        title: Text(
                          task.title,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 17, 255)),
                        ),
                        subtitle: Text(
                          task.description,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 4, 0, 255)),
                        ),
                   
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              tasks.removeAt(index);
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: itemColors[task.priority],
                          ),
                        )),
                  ),
                ],
              ));
        },
      ),
      // la bar de navigation
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 0, 17, 248),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
