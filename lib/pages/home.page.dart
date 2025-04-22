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
                    radius: 40,
                  )
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Theme.of(context).primaryColor],
                ),
              ),
            ),
            ListTile(
              title: Text("Home", style: Theme.of(context).textTheme.bodyLarge) ,
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Counter", style: Theme.of(context).textTheme.bodyLarge) ,
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Contact", style: Theme.of(context).textTheme.bodyLarge) ,
              onTap: (){
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/contact");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color :Colors.black),),
        backgroundColor: Theme.of(context).primaryColor,),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}