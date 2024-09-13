import 'package:flutter/material.dart';
import 'package:glowup/src/profil.dart';
import 'addtask.dart';
import '../main.dart';
import 'inscription.dart';
import 'package:intl/intl.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final List<Color> itemColors = [
    const Color.fromARGB(255, 0, 217, 255),
    const Color.fromARGB(255, 233, 114, 16),
    const Color.fromARGB(255, 247, 0, 33)
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
      body: Scrollbar(
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (ctx, index) {
            final task = tasks[index];
            return Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(10), // Rayon de 10 pixels
                            border: Border.all(
                              color: itemColors[
                                  task.priority], // Couleur de la bordure
                              width: 2, // Largeur de la bordure
                            ),
                            color: const Color.fromARGB(
                                255, 255, 255, 255), // Couleur de fond
                          ),
                          child: ListTile(
                            leading: Checkbox(
                              value: task.isCompleted,
                              onChanged: (value) {
                                setState(() {
                                  task.toggleCompletion();
                                });
                              },
                              activeColor: itemColors[task.priority],
                            ),
                            title: Text(task.title,
                                style: task.isCompleted
                                    ? const TextStyle(
                                        decoration: TextDecoration.lineThrough)
                                    : null),
                            subtitle: Text(task.description,
                                style: task.isCompleted
                                    ? const TextStyle(
                                        decoration: TextDecoration.lineThrough)
                                    : null),
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
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                task.dueDate != null
                                    ? DateFormat('yyyy-MM-dd')
                                        .format(task.dueDate!)
                                    : 'pas de date',
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors
                                        .white // Adjust font size for better display
                                    ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ));
          },
        ),
      ),
      // la bar de navigation
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyPageIns(),
                    ));
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
              icon: const Icon(
                Icons.add_circle_rounded,
                size: 35,
              ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilPage(),
                  ),
                );
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
