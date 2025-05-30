import 'package:flutter/material.dart';

class HomPage extends StatelessWidget {
  const HomPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profile.png"),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profile.png"),
                    radius: 30,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Theme.of(context).primaryColor],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
              title: Text("Home", style: Theme.of(context).textTheme.bodyLarge),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              },
            ),
            Divider(height: 1, color: Theme.of(context).primaryColor),
            ListTile(
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.arrow_forward),
              title: Text(
                "Counter",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              },
            ),
            Divider(height: 1, color: Theme.of(context).primaryColor),
            ListTile(
              leading: Icon(Icons.contact_page),
              trailing: Icon(Icons.arrow_forward),
              title: Text(
                "Contact",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/contact");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.black)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(child: Text("Home page")),
    );
  }
}
