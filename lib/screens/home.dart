import 'package:flutter/material.dart';
import 'package:flutter_get_navigation/controllers/counter_controller.dart';
import 'package:flutter_get_navigation/screens/other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Clicks: ${counterController.counter.value}")),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(OtherScreen());
                  Get.to(() => OtherScreen());
                },
                child: Text('Open other Screen'),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
