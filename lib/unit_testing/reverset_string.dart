import 'package:flutter/material.dart';

class ReversetString extends StatefulWidget {
  const ReversetString({super.key});

  @override
  State<ReversetString> createState() => _ReversetStringState();
}

class _ReversetStringState extends State<ReversetString> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse String'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Enter a string',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final reversedString =
                    ReverseString().reverse(_controller.text);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Reversed String'),
                      content: Text(reversedString),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Reverse'),
            ),
          ],
        ),
      ),
    );
  }
}

class ReverseString {
  String reverse(String str) {
    return str.split('').reversed.join();
  }
}
