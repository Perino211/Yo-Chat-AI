import 'package:chatai/components/my_textfield.dart';
import 'package:chatai/components/mybutton.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({
    super.key,
  });

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // void signUserIn(BuildContext context) {
  //   Navigator.pushNamed(context, '/to_main');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //login icon
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),

              //username textfield
              const SizedBox(
                height: 50,
              ),
              MyTextfield(
                myhinttext: "Username",
                obscureText: false,
                myController: usernameController,
              ),

              //password textfield
              const SizedBox(
                height: 15,
              ),
              MyTextfield(
                myhinttext: "Password",
                obscureText: true,
                myController: passwordController,
              ),

              //forgot password
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Forgot password?")],
                ),
              ),

              //sign in button
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/to_main');
                },
                child: const Mybutton(
                  btnTitle: "Sign In",
                ),
              ),

              //alternative sign in
              const SizedBox(
                height: 30,
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

              //sign in with google
              const SizedBox(
                height: 30,
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
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("No account?", style: TextStyle(fontSize: 16)),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/to_signup');
                      },
                      child: const Text(
                        "Sign Up instead",
                        style:
                            TextStyle(color: Color(0xff008efe), fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
