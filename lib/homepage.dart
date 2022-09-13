import 'package:flutter/material.dart';
import 'package:labtest_1/pagetwo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Text("Home Page")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PageTwo()),
          );
        },
        child: Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
