import 'package:buffapp/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(
      items: List<String>.generate(100, (i) => 'Item $i'),
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              // onTap: () {
              //   showDialog(
              //     context: context,
              //     builder: (_) {
              //       return AlertDialog(
              //         title: Text("タイトル"),
              //         content: Text("メッセージメッセージメッセージメッセージメッセージメッセージ"),
              //         actions: <Widget>[
              //           // ボタン領域
              //           TextButton(
              //             child: Text("Cancel"),
              //             onPressed: () => Navigator.pop(context),
              //           ),
              //           TextButton(
              //             child: Text("OK"),
              //             onPressed: () => Navigator.pop(context),
              //           ),
              //         ],
              //       );
              //     },
              //   );
              // },
            );
          },
        ),
      ),
    );
  }
}
