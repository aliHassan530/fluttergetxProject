import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controller/switch_controller.dart';

class MyWork extends StatelessWidget {
  MyWork({super.key});
  final switchController = Get.put(WorkController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Mesum",
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            Obx(
              () => Switch(
                value: switchController.switchVar.value,
                // value: switchController.switchVar,
                onChanged: (value) {
                  switchController.ChangeSwitchTrue(value);
                },
                inactiveTrackColor: Colors.red,
                activeTrackColor: Colors.red,
                activeColor: Colors.orange,
                inactiveThumbColor: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
