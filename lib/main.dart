import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
    home: Home()
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text(
          'Profile ID Card',
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[900],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/26274844?v=4"),
                  radius: 100,
                ),
              ),
              const SizedBox(height: 30),
              Divider( height: 60.0, color: Colors.grey[600]),
              const Text('NAME', style: TextStyle( color: Colors.white, letterSpacing: 2)),
              const SizedBox(height: 5),
              const Text('Kasun Kavinda', style: TextStyle( color: Colors.amber, letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text('CURRENT POSITION', style: TextStyle( color: Colors.white, letterSpacing: 2)),
              const SizedBox(height: 5),
              const Text('Software Engineer', style: TextStyle( color: Colors.amber, letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              //const Text('COMPANY', style: TextStyle( color: Colors.white, letterSpacing: 2)),
              //const SizedBox(height: 5),
              //const Text('Geveo Australasia', style: TextStyle( color: Colors.amber, letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.bold)),
              //const SizedBox(height: 20),
              const Text('LEVEL', style: TextStyle( color: Colors.white, letterSpacing: 2)),
              const SizedBox(height: 5),
              Text('$ninjaLevel', style: TextStyle( color: Colors.amber, letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(
                      Icons.email,
                      color: Colors.white
                  ),
                  SizedBox(width: 5),
                  Text('kasunkavinda.bc@gmail.com', style: TextStyle(color: Colors.white, fontSize: 15, letterSpacing: 2))
                ],
              ),
            ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel = ninjaLevel + 1;
          });
        },
        child: const Text('Add'),
      ),
    );
  }
}


