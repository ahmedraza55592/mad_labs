import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void clicked(BuildContext context, String? menu) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(SnackBar(
      content: Text(menu!),
      action: SnackBarAction(
        label: 'UNDO',
        onPressed: scaffold.hideCurrentSnackBar,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("Contacts"),
            leading: const Icon(Icons.import_contacts),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  // PopupMenuItem(
                  //     child: IconButton(
                  //         onPressed: () {
                  //           clicked(context, "Email Sent");
                  //         },
                  //         icon: const Icon(Icons.email))),
                  const PopupMenuItem(child: Text("Email")),
                  const PopupMenuItem(child: Text("Email .......")),
                  const PopupMenuItem(child: Text("Email ....")),
                  const PopupMenuItem(child: Text("Email......")),
                  const PopupMenuItem(child: Icon(Icons.email, color: Colors.blue,)),

                ];
              }),
            ],
          ),
          preferredSize: const Size.fromHeight(60.0)),
      body: const Center(
        child: Text(
          "HomePage",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
