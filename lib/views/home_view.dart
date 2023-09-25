import 'package:egyedi_nezet/views/details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomContentWidget(name: "kép 1"),
              CustomContentWidget(name: "kép 2"),
              CustomContentWidget(name: "kép 3"),
              CustomContentWidget(name: "kép 4"),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContentWidget extends StatelessWidget {
  CustomContentWidget({required this.name});
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 400,
      height: 350,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 360,
            child: Image.network(
              "https://picsum.photos/id/1/300/200",
              fit: BoxFit.fitWidth,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name),
              CupertinoButton.filled(
                child: Text("open"),
                onPressed: () {
                  Get.to(DetailsView(name));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
