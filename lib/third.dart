import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: Text("タイトル"),
                  content: Text("メッセージメッセージメッセージメッセージメッセージメッセージ"),
                  actions: <Widget>[
                    // ボタン領域
                    TextButton(
                      child: Text("Cancel"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    TextButton(
                      child: Text("OK"),
                      onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
                    ),
                  ],
                );
              },
            );
          },
          // onPressed: () {
          //   Navigator.popUntil(context, (route) => route.isFirst);
          //   // Navigator.pop(context);
          // },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
