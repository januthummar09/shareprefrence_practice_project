import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/utils/local_data.dart';
import 'package:shareprefrence_practice_project/utils/text_style_data.dart';

class GetStringDataScreen extends StatefulWidget {
  const GetStringDataScreen({Key? key}) : super(key: key);

  @override
  State<GetStringDataScreen> createState() => _GetStringDataScreenState();
}

class _GetStringDataScreenState extends State<GetStringDataScreen> {
  String name = "get_name";
  String surname = "surname_data";
  LocalData getData = LocalData();
  TextDeco textDeco = TextDeco();
  @override
  void initState() {
    super.initState();
    getData.getStringData(key: "name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("get data screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "get name:$name",
              style: textDeco.textDecoration(),
            ),
            Text(
              "get name:$surname",
              style: textDeco.textDecoration(),
            ),
            ElevatedButton(
              onPressed: () async {
                name = await getData.getStringData(key: "name");
                surname = await getData.getStringData(key: "surname");
                debugPrint("get data------->>$name");
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
