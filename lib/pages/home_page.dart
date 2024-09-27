import 'package:flutter/material.dart';
import 'package:fs_food_app/components/my_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.scrim,
        title: const Text('Home'),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
    );
  }
}