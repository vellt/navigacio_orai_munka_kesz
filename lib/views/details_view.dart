import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsView extends StatelessWidget {
  String name;
  DetailsView(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("details view"),
          CupertinoButton.filled(
            child: Text("back"),
            onPressed: () {
              Get.back();
            },
          )
        ],
      )),
    );
  }
}
