import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;

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
      body: Center(
        child: isSearching
            ? Container()
            : const Text(
                "HomePage",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
      ),
    );
  }
}
