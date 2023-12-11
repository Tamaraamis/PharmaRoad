import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final bool success;

  const ResultPage({Key? key, required this.success}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              success ? Icons.check_circle : Icons.error,
              color: success ? Colors.green : Colors.red,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              success ? 'Signup Successful!' : 'Signup Failed!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: success ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // You can navigate back to the signup page or any other page as needed.
                Navigator.pop(context);
              },
              child: Text('Back to Signup Page'),
            ),
          ],
        ),
      ),
    );
  }
}
