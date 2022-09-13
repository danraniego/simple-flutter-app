import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(CupertinoIcons.airplane)
          ),
          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.clear)
          )
        ],
        // leading: IconButton(
        //   onPressed: () {
        //
        //   },
        //   icon: Icon(Icons.home),
        // ),
        title: Text("Title of Page 2"),
      ),
      body: Container(
        child: DropdownButton<String>(
          isExpanded: false,
          isDense: true,
          icon: const Icon(Icons.more_vert),
          items: ["Delete", "Edit"].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (_) {},
        ),
      ),
    );
  }
}
