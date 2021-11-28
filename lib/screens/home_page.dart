import 'package:flutter/material.dart';
import 'package:mad_labs/screens/detail_screen.dart';
import 'package:mad_labs/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;

  final tasks = List<Task>.generate(
      20,
      (index) => Task(
          taskName: 'Task ${index + 1}',
          description: 'Task Description ${index + 1}'));

  Widget _buildSearchField() {
    return const TextField(
      autofocus: true,
      decoration: InputDecoration(
        hintText: "Search Data...",
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white30),
      ),
      style: TextStyle(color: Colors.white, fontSize: 16.0),
    );
  }

  List<Widget> _buildActions() {
    if (isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            setState(() {
              isSearching = false;
            });
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          setState(() {
            isSearching = true;
          });
        },
      ),
      IconButton(
          onPressed: () {
            Constants.prefs?.setBool('loggedIn', false);
            Navigator.pushReplacementNamed(context, '/login');
          },
          icon: const Icon(Icons.logout)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            automaticallyImplyLeading: false,
            title: isSearching ? _buildSearchField() : const Text("Contacts"),
            leading: isSearching
                ? BackButton(
                    onPressed: () {
                      setState(() {
                        isSearching = false;
                      });
                    },
                  )
                : const Icon(Icons.menu),
            actions: _buildActions(),
          ),
          preferredSize: const Size.fromHeight(60.0)),
      body: isSearching
          ? Container()
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index].taskName!),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailScreen(
                                  task: tasks[index],
                                )));
                  },
                );
              }),
    );
  }
}

class Task {
  final String? taskName;
  final String? description;

  Task({this.taskName, this.description});
}
