import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetIntFristScreen extends StatefulWidget {
  const GetIntFristScreen({Key? key}) : super(key: key);

  @override
  State<GetIntFristScreen> createState() => _GetIntFristScreenState();
}

class _GetIntFristScreenState extends State<GetIntFristScreen> {
  int number = 10;
  int age = 22;
  SharedPreferences? sharedPreferences;
  @override
  void initState() {
    getInstatData();
    super.initState();
  }

  getInstatData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    getIntData();
  }

  setIntData() async {
    await sharedPreferences!.setInt('num', 50);
    await sharedPreferences!.setInt('age', 22);
    debugPrint("SetData Number ----------------->>$number");
    debugPrint("SetData Age ----------------->>$age");
  }

  getIntData() {
    number = sharedPreferences!.getInt('num')!;
    age = sharedPreferences!.getInt('age')!;
    debugPrint("getIntData Number ----------------->>$number");
    debugPrint("getIntData Age ----------------->>$age");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Int Frist Screen'),
        backgroundColor: const Color(0xff899c6e),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: const Color(0xff899c6e),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 80,
                ),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Number :$number",
                          style: textDecoration(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Age :$age",
                          style: textDecoration(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setIntData();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff899c6e),
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                  ),
                  icon: const Icon(Icons.arrow_upward),
                  label: const Text("SetData"),
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      getIntData();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xff899c6e),
                      ),
                      foregroundColor: MaterialStateProperty.all(
                        Colors.white,
                      ),
                    ),
                    icon: const Icon(Icons.arrow_downward),
                    label: const Text("getData")),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xff899c6e),
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              icon: const Icon(Icons.delete),
              label: const Text("RemoveData"),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xff899c6e),
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              icon: const Icon(Icons.send),
              label: const Text("SendData"),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle textDecoration() {
  return const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Color(0xff899c6e),
  );
}
