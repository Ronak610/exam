import 'package:flutter/material.dart';

class shoping extends StatefulWidget {
  const shoping({Key? key}) : super(key: key);

  @override
  State<shoping> createState() => _shopingState();
}

class _shopingState extends State<shoping> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
          ),
          body: ListView(
            children: [
              Container(
                height: 70,
                width: double.infinity,
                color: Colors.black45,
                child: Text("${data[1]}"),
              )
            ],
          )),
    );
  }
}
