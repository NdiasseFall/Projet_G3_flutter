import 'package:flutter/material.dart';
import 'detailstask.dart';
import '../main.dart';

class Task {
  final String title;
  final String description;
  final int priority;
  final bool val1;

  Task({
    required this.title,
    required this.description,
    required this.priority,
    required this.val1,
  });
}

List<Task> tasks = [
  Task(
      title: 'Acheter des courses',
      description: 'Pain, lait, œufs',
      priority: 1,
      val1: false),
  Task(
      title: 'Réunion de travail',
      description: 'Présentation à 15h',
      priority: 0,
      val1: false),
];

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  int _groupValue = 0;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void onChange(int? value) {
    setState(() {
      _groupValue = value!;
    });
  }

  addTask() {
    String title0 = _titleController.text;
    String description0 = _descriptionController.text;
    int priority0 = _groupValue;
    bool value = false;
    setState(() {
      tasks.add(Task(
          title: title0,
          description: description0,
          priority: priority0,
          val1: value));
      _titleController.clear();
      _descriptionController.clear();
      _groupValue = 0;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Tâche ajoutée avec succès!')),
    );
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
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: _titleController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Titre',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  controller: _descriptionController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Text('Priorité',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              RadioListTile(
                  title: const Text(
                    'Basse',
                    style: TextStyle(color: Colors.white),
                  ),
                  activeColor: const Color.fromARGB(255, 0, 217, 255),
                  value: 0,
                  groupValue: _groupValue,
                  onChanged: onChange),
              RadioListTile(
                  title: const Text('Moyenne',
                      style: TextStyle(color: Colors.white)),
                  value: 1,
                  activeColor: const Color.fromARGB(255, 233, 114, 16),
                  groupValue: _groupValue,
                  onChanged: onChange),
              RadioListTile(
                  title: const Text('Elevée',
                      style: TextStyle(color: Colors.white)),
                  value: 2,
                  activeColor: const Color.fromARGB(255, 197, 0, 26),
                  groupValue: _groupValue,
                  onChanged: onChange),
              ElevatedButton(
                onPressed: () {
                  addTask();
                },
                child: const Text('Ajouter la tâche',
                    style: TextStyle(color: Color.fromARGB(255, 17, 0, 255))),
              )
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
