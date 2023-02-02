import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/utils/local_data.dart';

class SetStringDataScreen extends StatefulWidget {
  const SetStringDataScreen({Key? key}) : super(key: key);

  @override
  State<SetStringDataScreen> createState() => _SetStringDataScreenState();
}

class _SetStringDataScreenState extends State<SetStringDataScreen> {
  LocalData localData = LocalData();
  dynamic data = 123;
  String? abc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("data :$data"),
            ElevatedButton(
              onPressed: () async {
                // data = localData.setStringData(key: "name", val: 'janki');
                data = await localData.setStringData(key: "name", val: "janki");
                // debugPrint("data -->> $data");
                debugPrint(
                    "data=-------------->>${await localData.setStringData(key: 'cv', val: 'cvbn')}");
              },
              child: const Text("set"),
            ),
            ElevatedButton(
              onPressed: () async {
                data = await localData.getStringData(key: 'name');
                // data = await localData.setStringData(key: "name", val: "janki");
                debugPrint("data -->> $data");
                // debugPrint(
                //     "data=-------------->>${await localData.setStringData(key: 'cv', val: 'cvbn')}");
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
