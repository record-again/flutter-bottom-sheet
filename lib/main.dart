import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Padding(
              padding: EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isDismissible: false,
                      context: context,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      builder: (context) => SizedBox(
                            height: 500,
                            child: ListView(
                              children: [
                                ListTile(
                                  onTap: () => print('Book'),
                                  leading: Icon(Icons.book),
                                  title: Text("Book"),
                                ),
                                ListTile(
                                  onTap: () => print('Phone'),
                                  leading: Icon(Icons.phone),
                                  title: Text("Phone"),
                                ),
                                ListTile(
                                  onTap: () => print('Business'),
                                  leading: Icon(Icons.business),
                                  title: Text("Business"),
                                ),
                                ListTile(
                                  onTap: () => Navigator.pop(context),
                                  leading: Icon(Icons.cancel),
                                  title: Text("Cancel"),
                                ),
                              ],
                            ),
                          ));
                },
                child: Text("Show Bottom Sheet"),
              ))),
    );
  }
}
