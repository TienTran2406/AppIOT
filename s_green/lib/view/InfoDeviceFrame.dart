import 'package:flutter/material.dart';

class InfoDeviceFrame extends StatelessWidget {
  const InfoDeviceFrame({required this.title,super.key});
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        leading: const Icon(Icons.adb_sharp, size: 30,),
        title: Text(title, style: const TextStyle(fontSize: 20),),
      ),
    );
  }
}