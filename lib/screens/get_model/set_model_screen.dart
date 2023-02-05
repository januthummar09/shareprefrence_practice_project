import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/utils/local_data.dart';

class SetModelScreen extends StatefulWidget {
  const SetModelScreen({Key? key}) : super(key: key);

  @override
  State<SetModelScreen> createState() => _SetModelScreenState();
}

class _SetModelScreenState extends State<SetModelScreen> {
  bool done = true;
  LocalData localData = LocalData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Model Title: $done"),
            ElevatedButton(
              onPressed: () async {
                // done = await localData.setBoolData("check", val);
                setState(() {});
              },
              child: const Text("set"),
            ),
            ElevatedButton(
              onPressed: () async {
                done = await localData.getBoolData(key: "cheak");
                debugPrint("get done---------->>$done");
                setState(() {});
              },
              child: const Text("get"),
            ),
          ],
        ),
      ),
    );
  }
}
