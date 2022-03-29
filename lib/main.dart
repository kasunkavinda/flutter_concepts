import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My First App',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.amber
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.cyan,
              child: const Padding(
                padding: EdgeInsets.all(50.0),
                child: Text('1'),
              )
            ),
          ),
          Container(
              color: Colors.pink,
              child: const Padding(
                padding: EdgeInsets.all(50.0),
                child: Text('1'),
              )
          ),
          Container(
              color: Colors.amber,
              child: const Padding(
                padding: EdgeInsets.all(50.0),
                child: Text('1'),
              )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Text('Add'),
      ),
    );
  }
}


