import 'package:flutter/material.dart';
import 'detailstask.dart';
import '../main.dart';
import 'inscription.dart';

class Task {
  Task({
    required this.title,
    required this.description,
    this.dueDate,
    required this.priority,
    this.isCompleted = false,
  });
  String title;
  String description;
  DateTime? dueDate;
  int priority;
  bool isCompleted;

  void toggleCompletion() {
    isCompleted = !isCompleted;
  }
}

List<Task> tasks = [];

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  int _groupValue = 0;
  final List<Task> _tasks = [];
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  DateTime? _selectedDueDate;

  void onChange(int? value) {
    setState(() {
      _groupValue = value!;
    });
  }

  List<Task> _filterTasks(String query) {
    if (query.isEmpty) {
      return _tasks;
    }

    return _tasks
        .where((task) => task.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  addTask() {
    if (_titleController.text.isNotEmpty &&
        _descriptionController.text.isNotEmpty) {
      String title0 = _titleController.text;
      String description0 = _descriptionController.text;
      int priority0 = _groupValue;
      setState(() {
        tasks.add(Task(
          title: title0,
          description: description0,
          dueDate: _selectedDueDate,
          priority: priority0,
        ));
        _tasks.sort((a, b) {
          if (a.dueDate == null) return 1;
          if (b.dueDate == null) return -1;
          return a.dueDate!.compareTo(b.dueDate!);
        });
        _titleController.clear();
        _descriptionController.clear();
        _selectedDueDate = null;
        _groupValue = 0;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tâche ajoutée avec succès!')),
      );
    }
  }

  Future<void> _selectDueDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDueDate = pickedDate;
      });
    }
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () => _selectDueDate(context),
                    icon: const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text('Priorité',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              ),
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
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                  onPressed: () {
                    addTask();
                  },
                  child: const Text('Ajouter Tache',
                      style: TextStyle(color: Color.fromARGB(255, 25, 0, 255))),
                ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyPageIns(),
                  ),
                );
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
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
