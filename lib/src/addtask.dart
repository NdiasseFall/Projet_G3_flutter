import 'package:flutter/material.dart';
import 'detailstask.dart';
import '../main.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<Map<String, String>> tasks = [];

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  void addTask() {
    final title = titleController.text;
    final content = contentController.text;

    if (title.isNotEmpty && content.isNotEmpty) {
      setState(() {
        tasks.add({"title": title, "content": content});
        titleController.clear();
        contentController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 255, 1),
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Titre'),
          ),
          TextField(
            controller: contentController,
            decoration: InputDecoration(labelText: 'Contenu'),
          ),
          ElevatedButton(
            onPressed: addTask,
            child: Text('Ajouter la tâche'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index]["title"]!),
                  subtitle: Text(tasks[index]["content"]!),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 0, 17, 248),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homePage(),
                  ),
                );
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                // Handle button press
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskPage(),
                  ),
                );
              },
              icon: Icon(Icons.edit_note),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskListScreen(),
                  ),
                );
              },
              icon: Icon(Icons.folder),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
