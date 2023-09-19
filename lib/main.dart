import 'package:flutter/material.dart';
// import 'package:flutter_application_ecommerce/Model/GetX/Binding/initial_binding.dart';
import 'Model/GetX/Binding/initial_binding.dart';
import 'Model/GetX/Controller/duplicate_controller.dart';
import 'View/RootScreen/root.dart';
import 'View/IntroScreen/intro_screen.dart';
import 'ViewModel/Initial/initial.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HighPriorityInitial.initial();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFirst =
    Get.find<DuplicateController>().introFunctions.getLaunchStatus();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      title: 'E-commerce X',
      home: isFirst
          ? const IntroScreen()
          : const RootScreen(
        index: 0,
      ),
    );
  }
}