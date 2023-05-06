import 'package:flutter/material.dart';
import 'package:flutter_get_navigation/controllers/counter_controller.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  // const OtherScreen({Key? key}) : super(key: key);
  final CounterController counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Screen was clicked ${counterController.counter.value} times"),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('Open other Screen'),
          )
        ],
      ),
    );
  }
}
