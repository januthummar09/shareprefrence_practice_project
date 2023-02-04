import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/screens/get_bool/get_bool_second_screen.dart';
import 'package:shareprefrence_practice_project/utils/local_data.dart';
import 'package:shareprefrence_practice_project/utils/text_style_data.dart';

class SetBoolFirstScreen extends StatefulWidget {
  const SetBoolFirstScreen({Key? key}) : super(key: key);

  @override
  State<SetBoolFirstScreen> createState() => _SetBoolFirstScreenState();
}

class _SetBoolFirstScreenState extends State<SetBoolFirstScreen> {
  bool done = true;
  LocalData localData = LocalData();
  TextDeco textDeco = TextDeco();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Done :$done",
              style: textDeco.textDecoration(),
            ),
            ElevatedButton(
              onPressed: () async {
                // localData.setBoolData("done1", false);
                done = await localData.setBoolData("cheak", false);
                // debugPrint(
                //     "set done1 Direct---------->>${await localData.setBoolData("done1", false)},");
                debugPrint("set done---------->>$done");
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
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GetBoolSecondScreen(),
                    ));
              },
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
