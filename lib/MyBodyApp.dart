import 'package:flutter/material.dart';

class MyBodyApp extends StatefulWidget {
  @override
  _MyBodyAppState createState() => _MyBodyAppState();
}

class _MyBodyAppState extends State<MyBodyApp> {
  List<String> list = [];
  // String myText;
  TextEditingController txtAdd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          TextField(
            // onChanged: (String text) {
            //   myText = text;
            // },
            controller: txtAdd,
            decoration: InputDecoration(
                labelText: 'Enter your favorite programming language:',
                // border: OutlineInputBorder(), // Add border to TextField
                hintText: 'Javascript, Python, Laravel, Java, Spring ...',
                icon: Image(
                  width: 32,
                  height: 32,
                  image: NetworkImage(
                      'https://w7.pngwing.com/pngs/776/537/png-transparent-web-development-computer-icons-source-code-program-optimization-computer-programming-free-tag-miscellaneous-angle-text.png'),
                )),
          ),
          RaisedButton(
            child: Text('Add'),
            onPressed: () {
              setState(() {
                list.add(txtAdd.text);
                txtAdd.clear();
              });
            },
          ),
          Container(
            height: 450,
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(list[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
