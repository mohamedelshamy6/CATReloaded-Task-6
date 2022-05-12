import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: const Text(
          'Screen 1',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        backgroundColor:  Colors.teal[800],
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0,right: 10.0,left: 10.0),
          child: ListView(
            children: [
              listTileCustom(Icons.person, 'Profile', 'Go to your profile'),
              const SizedBox(height: 50),
              listTileCustom(Icons.favorite, 'Favorites', 'Go to your favorites'),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset('images/cat.jpg'),
                Container(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 8,
                  color: Colors.teal[300],
                  child: const Text(
                    'Cat Reloaded',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'screen2');
            },
            child: const Text(
              'Go to the other screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.teal),
            ),
          )
        ],
      ),
    );
  }

  listTileCustom(icon, txt, subTxt) {
    return ListTile(
      tileColor:  Colors.teal,
      leading: Icon(icon,color: Colors.black),
      title: Text(
        txt,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subTxt,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
