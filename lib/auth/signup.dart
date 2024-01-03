import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var obscureText = true;

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  SnackBar buildSnackBar(String message) {
    return SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          fontStyle: FontStyle.normal,
        ),
      ),
      backgroundColor: Colors.red,
    );
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(message));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff41b2d6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.all(20),
    child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Sign UP",
                    style: TextStyle(color: Color(0xffEDFAFF), fontSize: 40),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Create Your Account Now",
                    style: TextStyle(color: Color(0xffEDFAFF), fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 50),
                        buildTextField(email, Icons.email, "Email"),
                        const SizedBox(height: 20),
                        buildTextField(name, Icons.person, "Username"),
                        const SizedBox(height: 20),
                        buildPasswordField(password),
                        const SizedBox(height: 30),
                        buildHaveAccountLink(),
                        const SizedBox(height: 40),
                        buildSignupButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, IconData icon, String hintText) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: const Border(bottom: BorderSide(color: Color(0xff41b2d6))),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          errorStyle: const TextStyle(color: Colors.red),
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildPasswordField(TextEditingController controller) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xff41b2d6))),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          errorStyle: const TextStyle(color: Colors.red),
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
          ),
          hintText: "Password",
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildHaveAccountLink() {
    return Row(
      children: [
        const Text(
          "Have Account?",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("try");
          },
          child: const Text(
            " ClickHere",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        )
      ],
    );
  }

Widget buildSignupButton() {
  return Container(
    height: 50,
    margin: const EdgeInsets.symmetric(horizontal: 50),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: const Color(0xff41b2d6),
    ),
    child: Center(
      child: TextButton(
        onPressed: () async {
          email.text = email.text.trim();
          name.text = name.text.trim();
          password.text = password.text.trim();

          if (email.text.isEmpty || name.text.isEmpty || password.text.isEmpty) {
            showSnackBar('Please fill in all fields.');
          } else if (!EmailValidator.validate(email.text)) {
            showSnackBar('Please enter a valid email address.');
          } else {
            try {
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email.text,
                password: password.text,
              );
              Navigator.of(context).pushReplacementNamed("try");
            } on FirebaseAuthException catch (e) {
              if (e.code == 'email-already-in-use') {
                showSnackBar('The account already exists for that email.');
              } else if (e.code == 'weak-password') {
                showSnackBar('The password provided is too weak.');
              }
            } catch (e) {
              print(e);
            }
          }
        },
          child: const Text(
            "Signup",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
