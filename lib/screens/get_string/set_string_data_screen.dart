import 'package:flutter/material.dart';
import 'package:shareprefrence_practice_project/screens/get_string/get_string_data_screen.dart';
import 'package:shareprefrence_practice_project/utils/local_data.dart';

class SetStringDataScreen extends StatefulWidget {
  const SetStringDataScreen({Key? key}) : super(key: key);

  @override
  State<SetStringDataScreen> createState() => _SetStringDataScreenState();
}

class _SetStringDataScreenState extends State<SetStringDataScreen> {
  LocalData localData = LocalData();
  dynamic name = "name";
  dynamic surname = "surname";
  @override
  void initState() {
    super.initState();
    localData.getStringData(key: "name");
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
              "Name :$name",
              style: textDeco(),
            ),
            Text(
              "Surname :$surname",
              style: textDeco(),
            ),
            ElevatedButton(
              onPressed: () async {
                name = await localData.setStringData(key: "name", val: "janki");
                surname = await localData.setStringData(
                    key: "surname", val: "Thummar");
                debugPrint("set name----------->>$name");
                debugPrint("set surname----------->>$surname");
                // debugPrint(
                //     "set data----------->>${localData.setStringData(key: "name", val: "janki")}");
                setState(() {});
              },
              child: const Text("set"),
            ),
            ElevatedButton(
              onPressed: () async {
                name = await localData.getStringData(key: 'name');
                surname = await localData.getStringData(key: "surname");
                debugPrint("name -->> $name");
                debugPrint("surname -->> $surname");
                // debugPrint(
                //     "data=-------------->>${await localData.setStringData(key: 'cv', val: 'cvbn')}");
                setState(() {});
              },
              child: const Text("get"),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GetStringDataScreen(),
                  ),
                );
              },
              child: const Text("next screen"),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle textDeco() {
    return const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: Colors.blue,
    );
  }
}
