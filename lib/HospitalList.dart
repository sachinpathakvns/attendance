import 'package:attendance/useinsert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalList extends StatefulWidget {
  const HospitalList({Key? key}) : super(key: key);

  @override
  State<HospitalList> createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  var items = [
    'Shubham',
    'Galaxy',
    'Apex',
    'pathlabs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Attendance'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProvideData(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.medical_services_outlined,
                        size: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Apex',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 50,
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, right: 10),
            //   child: SizedBox(
            //     height: 800,
            //     child: GridView.builder(
            //         gridDelegate:
            //             const SliverGridDelegateWithMaxCrossAxisExtent(
            //                 maxCrossAxisExtent: 300,
            //                 childAspectRatio: 3 / 2,
            //                 crossAxisSpacing: 20,
            //                 mainAxisSpacing: 20),
            //         itemCount: items.length,
            //         itemBuilder: (BuildContext ctx, index) {
            //           return Container(
            //             padding: EdgeInsets.only(
            //                 top: 10, left: 20, right: 20),
            //             height: 200,
            //             alignment: Alignment.center,
            //             decoration: BoxDecoration(
            //                 color: Colors.black12,
            //                 borderRadius: BorderRadius.circular(15)),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: <Widget>[
            //                 Icon(
            //                   Icons.medical_services_outlined,
            //                   size: 30,
            //                 ),
            //                 SizedBox(
            //                   height: 20,
            //                 ),
            //                 TextButton(
            //                   onPressed: () {
            //                     print(index);
            //                   },
            //                   child: Text(
            //                     '${items[index]}',
            //                     style: TextStyle(fontSize: 20),
            //                   ),
            //                 )
            //               ],
            //             ),
            //           );
            //         }),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
