import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  RxDouble _percent = 0.56.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈 화면'),
      ),
      body: Container(
          child: Column(
        children: [
          const Image(
            image: AssetImage('assets/sprout.png'),
            height: 180,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            margin: const EdgeInsets.only(bottom: 12),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Obx(
                  () => LinearProgressIndicator(
                    minHeight: 12,
                    color: Colors.green,
                    value: _percent.value,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Container(
                  width: 72,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(24), // Rounded corners
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "56%",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 24,
                color: Colors.green,
              ),
              Container(
                width: 300.0, // Set the width
                height: 72.0, // Set the height
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the container
                  borderRadius: BorderRadius.circular(36), // Rounded corners
                  border: Border.all(
                    color: Colors.green, // Color of the border
                    width: 10, // Thickness of the border
                  ),
                ),
                child: const Center(
                  child: Text(
                    '역삼역',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
