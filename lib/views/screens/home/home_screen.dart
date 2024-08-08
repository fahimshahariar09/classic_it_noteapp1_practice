import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:noteapp/database/node_data.dart';
import 'package:noteapp/models/node_model.dart';
import 'package:noteapp/views/screens/home/widget/node_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Note app"),
      ),
      body: NodeData.noteData.isEmpty
          ? const Center(child: Text("Empty"))
          : ListView.builder(
              itemCount: NodeData.noteData.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      log("------Index:$index");
                      NodeData.noteData.removeAt(index);
                      setState(() {});
                    },
                    child: NodeCardWidget(
                      color: index % 2 == 0 ? Colors.orange : null,
                      titel: NodeData.noteData[index].titel,
                      description: NodeData.noteData[index].description,
                    ));
              }),
      floatingActionButton: InkWell(
        onTap: () {
          var data = NodeModel(titel: "titel : $i", description: "description");
          NodeData.noteData.add(data);
          i++;
          setState(() {});
        },
        child: const CircleAvatar(
          radius: 30,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
