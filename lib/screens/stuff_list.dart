import 'package:flutter/material.dart';
import 'package:tukatuku/screens/shoplist_form.dart';
import 'package:tukatuku/widgets/left_drawer.dart';

class StuffPage extends StatefulWidget {
  const StuffPage({super.key});

  @override
  State<StatefulWidget> createState() => _StuffPageState();
}

class _StuffPageState extends State<StuffPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stuffs'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: stuffs.length,
        itemBuilder: (context, index) {
          final stuff = stuffs[index];
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              title: Text(
                stuff.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ammount: ${stuff.amount}"),
                  Text("Descrption: ${stuff.description}")
                ],
              ),
            )
          );
        },
      )
    );
  }
}