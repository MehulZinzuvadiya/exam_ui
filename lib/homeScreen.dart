import 'package:flutter/material.dart';

import 'dataModel.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber.shade300,
      appBar: AppBar(
          backgroundColor: Colors.cyan.shade300,
          title: Text(
            "Student Detail",
            style: TextStyle(color: Colors.white),
          ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: l1.length,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) => Mywidget(
              l1[index].id!,l1[index].name!,l1[index].std!,index
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    Navigator.pushNamed(context, 'data').then((value) {
                      setState(() {
                      });
                    });
                  }),
            ),
          ),
        ],
      ),
    ));
  }

  Widget Mywidget(String? id, String? name, String? std,int index) {
    return ListTile(
      leading: Text(
        "$id",
        style: TextStyle(fontSize: 18),
      ),
      title: Text("$name"),
      subtitle: Text("$std"),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.green.shade300,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  l1.removeAt(index);
                });
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
    // Container(
    //   height: 80,
    //   width: double.infinity,
    //   margin: EdgeInsets.all(10),
    //   alignment: Alignment.center,
    //   decoration: BoxDecoration(
    //     color: Colors.indigo.shade300,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Row(
    //     children: [
    //       SizedBox(
    //         width: 5,
    //       ),
    //       Text("${grid}"),
    //       SizedBox(
    //         width: 10,
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text("${name}"),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Text("${std}"),
    //         ],
    //       ),
    //       Spacer(),
    //       InkWell(
    //           onTap: () {
    //             showDialog(
    //               context: context,
    //               builder: (context) {
    //                 return AlertDialog(
    //                   alignment: Alignment.center,
    //                   title: Text('Update ur Data'),
    //                   actions: [
    //                     TextField(
    //                       onChanged: (value) {},
    //                       decoration:
    //                           InputDecoration(hintText: "Enter ur gr_id"),
    //                     ),
    //                     TextField(
    //                       onChanged: (value) {},
    //                       decoration:
    //                           InputDecoration(hintText: "Enter ur name"),
    //                     ),
    //                     TextField(
    //                       onChanged: (value) {},
    //                       decoration:
    //                           InputDecoration(hintText: "Enter ur std"),
    //                     ),
    //                     SizedBox(
    //                       height: 10,
    //                     ),
    //                     ElevatedButton(
    //                         onPressed: () {
    //                           setState(() {
    //                           });
    //                         }, child: Text("Update")),
    //                     SizedBox(
    //                       height: 10,
    //                     ),
    //                     ElevatedButton(
    //                         onPressed: () {
    //                           setState(() {
    //                             Navigator.pop(context);
    //                           });
    //                         }, child: Text("Cancel")),
    //                   ],
    //                 );
    //               },
    //             );
    //           },
    //           child: Icon(Icons.edit)),
    //       SizedBox(
    //         width: 4,
    //       ),
    //       Icon(Icons.delete),
    //     ],
    //   ),
    // ),
  }
}
