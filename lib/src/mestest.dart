import 'package:flutter/material.dart';

class Task {
  final String title;
  final String content;
  final DateTime dueDate;
  final String priority;
  final Color color;

  Task({
    required this.title,
    required this.content,
    required this.dueDate,
    required this.priority,
    required this.color,
  });
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: TaskListScreen(),
    );
  }
}

class TaskListScreen extends StatelessWidget {
  final List<Task> tasks = [
    Task(
      title: 'Acheter du lait',
      content: 'Aller au supermarché',
      dueDate: DateTime.now().add(Duration(days: 1)),
      priority: 'Élevée',
      color: Colors.red,
    ),
    // Ajoutez d'autres tâches ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liste de tâches')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task.title),
            subtitle: Text(task.content),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetailsScreen(task: task),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TaskDetailsScreen extends StatelessWidget {
  final Task task;

  TaskDetailsScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Détails de la tâche')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Titre: ${task.title}'),
            Text('Contenu: ${task.content}'),
            Text('Date d\'échéance: ${task.dueDate}'),
            Text('Priorité: ${task.priority}'),
            Text('Couleur: ${task.color}'),
          ],
        ),
      ),
    );
  }
}





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isCardVisible = false;

  void toggleCardVisibility() {
    setState(() {
      isCardVisible = !isCardVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: toggleCardVisibility,
              child: Text('Afficher la carte'),
            ),
            if (isCardVisible)
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text('Ma carte rectangulaire'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
