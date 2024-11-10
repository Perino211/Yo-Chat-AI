import 'package:chatai/components/my_textfield.dart';
import 'package:chatai/components/mybutton.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //form title
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Create Account",
              style:
                  TextStyle(decoration: TextDecoration.underline, fontSize: 20),
            ),
            //name textfield
            const SizedBox(
              height: 15,
            ),
            MyTextfield(
                myhinttext: "Name",
                obscureText: false,
                myController: nameController),

            //Email textfield
            const SizedBox(
              height: 15,
            ),
            MyTextfield(
                myhinttext: "Email",
                obscureText: false,
                myController: emailController),
            //gender textfield
            const SizedBox(
              height: 15,
            ),
            MyTextfield(
                myhinttext: "Gender",
                obscureText: false,
                myController: genderController),
            //password textfield
            const SizedBox(
              height: 15,
            ),
            MyTextfield(
                myhinttext: "Password",
                obscureText: true,
                myController: passwordController),
            // confirm password textfield
            const SizedBox(
              height: 15,
            ),
            MyTextfield(
                myhinttext: "Confirm Password",
                obscureText: true,
                myController: confirmPpasswordController),

            // sign up button
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/to_signin');
                },
                child: const Mybutton(btnTitle: "Sign Up")),
            // alternative sign in
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  )),

                  //text btn dividers
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text("Or continue with"),
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ))
                ],
              ),
            ),

            //sign up with google option
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Google",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'images/google-icon.png',
                    height: 30,
                  )
                ],
              ),
            ),

            //sign up instead
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Already have an account?",
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/to_signin');
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(color: Color(0xff008efe), fontSize: 16),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
