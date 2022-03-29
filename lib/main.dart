import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First Appp',
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
      body:Center(
          child: Image(
            image: AssetImage('assets/image1.jpg')
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Add'),
      ),
    );
  }
}


