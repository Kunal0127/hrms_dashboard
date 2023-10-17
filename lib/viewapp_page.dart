import 'package:flutter/material.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }
}
