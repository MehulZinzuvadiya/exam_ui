import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List name = ["mehul", "raj", "dharmesh", "jenil", "kenil"];
  List gr_id = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];
  List std = [
    "10",
    "9",
    "11",
    "12",
    "13",
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController txt_id = TextEditingController();
    TextEditingController txt_name = TextEditingController();
    TextEditingController txt_std = TextEditingController();

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber.shade300,
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "My App",
            style: TextStyle(color: Colors.white),
          )),
      body: Stack(
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: name.length,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) =>
                Mywidget(name[index], std[index], gr_id[index]),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {

                    });
                    Navigator.pushNamed(context, 'data');
                  }),
            ),
          ),
        ],
      ),
    ));
  }

  Widget Mywidget(String? name, String? std, String? grid) {
    return Stack(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.indigo.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text("${grid}"),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${name}"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("${std}"),
                ],
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          alignment: Alignment.center,
                          title: Text('Update ur Data'),
                          actions: [
                            TextField(
                              onChanged: (value) {},
                              decoration:
                                  InputDecoration(hintText: "Enter ur gr_id"),
                            ),
                            TextField(
                              onChanged: (value) {},
                              decoration:
                                  InputDecoration(hintText: "Enter ur name"),
                            ),
                            TextField(
                              onChanged: (value) {},
                              decoration:
                                  InputDecoration(hintText: "Enter ur std"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                  });
                                }, child: Text("Update")),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                }, child: Text("Cancel")),
                          ],
                        );
                      },
                    );
                  },
                  child: Icon(Icons.edit)),
              SizedBox(
                width: 4,
              ),
              Icon(Icons.delete),
            ],
          ),
        ),
      ],
    );
  }
}
