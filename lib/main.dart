import 'package:flutter/material.dart';
import "src/addtask.dart";
import 'src/detailstask.dart';
// import 'src/mestest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glow up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
      appBar: AppBar(
        actions: const [Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.notifications_active),
        )],
        backgroundColor: const Color.fromRGBO(0, 0, 255, 1),
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Bienvenue sur Glow up',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const TaskPage()));
                },
                child: const Text(
                  'Commencer',
                  style: TextStyle(color: Color.fromARGB(255, 0, 4, 255)),
                ),
              ),
            ),
          ],
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
              onPressed: () {},
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
                    builder: (context) => const  TaskListScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.folder),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
              
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
