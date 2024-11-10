// ignore_for_file: prefer_const_constructors

import 'package:chatai/components/my_textfield.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});

  final queryController = TextEditingController();

  // void onLogout() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text("Warning!"),
  //           content: Text("Are you sure to Log out?"),
  //           actions: [TextButton(onPressed: () {}, child: Text("Close"))],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text(
          "Yo Chat AI",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Warning!"),
                        content: Text(
                            "Are you sure to Log out? If you intended to do so, click log out, else close"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Close")),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Log out"))
                        ],
                      );
                    });
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
        backgroundColor: const Color(0xff008efe),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Color(0xff008efe),
              width: 2,
            ),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                controller: queryController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "What's on your mind..."),
              )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: Color(0xff008efe),
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            MyTextfield(
                myhinttext: "hey",
                obscureText: false,
                myController: queryController),
          ],
        ),
      ),
    );
  }
}
