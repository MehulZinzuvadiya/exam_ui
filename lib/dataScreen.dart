import 'package:flutter/material.dart';

import 'dataModel.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  TextEditingController txtid = TextEditingController();
  TextEditingController txtname = TextEditingController();
  TextEditingController txtstd = TextEditingController();
  List name = [""];
  List std = [""];
  List id = [""];

  @override
  Widget build(BuildContext context) {
    dataModel m1 = ModalRoute.of(context)!.settings.arguments as dataModel;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Add Data Screen",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter ur grid",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              controller: txtid,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter ur Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              controller: txtname,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter ur Std",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              controller: txtstd,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("Submit")),
          ],
        ),
      ),
    ));
  }
}
