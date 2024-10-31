import 'package:flutter/material.dart';
import 'package:pro_task/controller/remove_controller.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: Expanded(child: Consumer<RemoveController>(builder:
          (BuildContext context, RemoveController value, Widget? child) {
        return ListView.builder(
          itemCount: value.fruits.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(value.fruits[index]),
              trailing: IconButton(
                  onPressed: () {
                    value.removeFruit(index);
                  },
                  icon: Icon(Icons.delete)),
            );
          },
        );
      })),
    );
  }
}
