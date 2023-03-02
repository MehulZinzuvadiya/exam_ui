import 'package:exam_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dataModel.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {

  TextEditingController dtxtid = TextEditingController();
  TextEditingController dtxtname = TextEditingController();
  TextEditingController dtxtstd = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              controller: dtxtid,
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
              controller: dtxtname,
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
              controller: dtxtstd,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  dataModel d1 = dataModel(
                      id: dtxtid.text, name: dtxtname.text, std: dtxtstd.text);
                  setState(() {
                    l1.add(d1);
                  });
                  Navigator.pop(context);
                },
                child: Text("Add")),
          ],
        ),
      ),
    ));
  }
}
