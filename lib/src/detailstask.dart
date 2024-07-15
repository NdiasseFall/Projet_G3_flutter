import 'package:flutter/material.dart';
import 'addtask.dart';
import '../main.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
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
          return ListTile(
            title: Text(
              task.title,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              task.description,
              style: TextStyle(color: Colors.white),
            ),
            trailing: Text(
              task.priority.toString(),
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Naviguer vers l'écran de détails de la tâche
              Navigator.of(context).pushNamed('/task-detail', arguments: task);
            },
          );
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
