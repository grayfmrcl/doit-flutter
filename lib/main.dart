import 'package:flutter/material.dart';

void main() {
  runApp(const DoIt(
    title: 'Do It!',
    subtitle: 'A basic To Do app',
  ));
}

class DoIt extends StatelessWidget {
  final String title;
  final String subtitle;
  const DoIt({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '$title - $subtitle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(subtitle),
        ),
      ),
    );
  }
}
