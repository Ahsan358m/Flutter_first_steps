import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double version = 3.0;
    final int days = 456;
    final String name = 'Flutter $version';

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello $days Days of $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
