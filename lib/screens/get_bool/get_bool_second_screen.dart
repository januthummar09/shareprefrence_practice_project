import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/utils/local_data.dart';
import 'package:shareprefrence_practice_project/utils/text_style_data.dart';

class GetBoolSecondScreen extends StatefulWidget {
  const GetBoolSecondScreen({Key? key}) : super(key: key);

  @override
  State<GetBoolSecondScreen> createState() => _GetBoolSecondScreenState();
}

class _GetBoolSecondScreenState extends State<GetBoolSecondScreen> {
  bool? done;
  LocalData localData = LocalData();
  TextDeco textDeco = TextDeco();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Get Bool Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Bool :$done", style: textDeco.textDecoration()),
            ElevatedButton(
              onPressed: () async {
                done = await localData.getBoolData(key: "cheak");
                debugPrint("Bool data------------->>$done");
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
