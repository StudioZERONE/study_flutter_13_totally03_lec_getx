import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter_13_totally03_lec_getx/countController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<CountController>(
                init: CountController(),
                builder: (_) => Text(
                    'Current Count: ${Get.find<CountController>().counter}'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Get.find<CountController>().increase(),
                    child: const Text('증가'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => Get.find<CountController>().decrease(),
                    child: const Text('감소'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
