import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MaterialApp(
    title: "Awesome app",
    home: HomePage(),
    theme: ThemeData(primaryColor: Colors.purple),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  TextEditingController _nameController = TextEditingController();
  var mytext = "Change me";

  @override
    void initState() {
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Awesome app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assert/bg.jpeg",
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  mytext,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        hintText: "Enter something here",
                        labelText: "Name",
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("peterbond@gmial.com"),
              accountName: Text("Peter Bond"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-mail"),
              subtitle: Text("peterbond@gmial.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mytext = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
