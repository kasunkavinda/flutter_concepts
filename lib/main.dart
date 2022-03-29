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
            child: Image.asset('assets/image1.jpg'),
            flex: 4),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.cyan,
              child: const Padding(
                padding: EdgeInsets.all(50.0),
                child: Text('1'),
              )
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                color: Colors.pink,
                child: const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text('1'),
                )
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.amber,
                child: const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: Text('1'),
                )
            ),
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


