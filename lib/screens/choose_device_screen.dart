import 'package:flutter/material.dart';

class ChooseDeviceScreen extends StatefulWidget {
  const ChooseDeviceScreen({super.key});
  @override
  State<ChooseDeviceScreen> createState() => _ChooseDeviceScreenState();
}

class _ChooseDeviceScreenState extends State<ChooseDeviceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cool Appbar"),
        ),
        body: const Column(
          children: [Text("Stuff")],
        ));
  }
}
