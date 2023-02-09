import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hello_word/app/controller/controller.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Controller();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unipar ADS 2022'),
      ),
      body: Center(
        child: Text(controller.cliques.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked');
          setState(() {
            controller.cliques++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
