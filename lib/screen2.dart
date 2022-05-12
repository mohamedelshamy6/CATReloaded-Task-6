import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Text(
          'Screen 2',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: const [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/person.jpg'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 30,
                  child: Icon(
                    Icons.arrow_drop_down_circle_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            const ListTile(
              tileColor: Colors.white,
              title: Text(
                'Change icon',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Click here to change icon',
                style: TextStyle(color: Colors.black),
              ),
              leading: Icon(Icons.person, color: Colors.black),
              trailing: Icon(Icons.add, color: Colors.black),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 6),
            ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              title: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.title,
                color: Colors.black,
              ),
              tileColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
