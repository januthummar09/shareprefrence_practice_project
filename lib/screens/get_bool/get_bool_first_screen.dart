import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/utils/local_data.dart';

class GetBoolFirstScreen extends StatefulWidget {
  const GetBoolFirstScreen({Key? key}) : super(key: key);

  @override
  State<GetBoolFirstScreen> createState() => _GetBoolFirstScreenState();
}

class _GetBoolFirstScreenState extends State<GetBoolFirstScreen> {
  bool done = true;
  @override
  void initState() {
 localData=LocalData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Done :$done"),
          ElevatedButton(
            onPressed: () {
              done = await localData.
            },
            child: Text("set"),
          ),
        ],
      ),
    );
  }
}
