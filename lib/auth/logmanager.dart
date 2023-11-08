import 'package:flutter/material.dart';

class LogM extends StatefulWidget {
  const LogM({super.key});

  @override
  State<LogM> createState() => _LogMState();
}

class _LogMState extends State<LogM> {
  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 70),
                        child: Image.asset("images/ph1.png",
                            height: 300, width: 300))),
                Container(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                        child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Color(0xff41b2d6)))),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Pharmacy Id",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Color(0xff41b2d6)))),
                          child: TextField(
                            obscureText: obscureText,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: obscureText
                                      ? const Icon(
                                          Icons.visibility_off,
                                        )
                                      : const Icon(Icons.visibility)),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("homeph");
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xff41B2D6),
                                  padding: EdgeInsets.all(15),
                                  elevation: 100,
                                  textStyle: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffC7F1FF)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Color(0xffC7F1FF), fontSize: 25),
                              )),
                        )
                      ],
                    )))
              ],
            )));
  }
}
