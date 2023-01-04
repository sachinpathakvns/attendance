import 'package:attendance/Utilities.dart';
import 'package:attendance/scanner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProvideData extends StatefulWidget {
  const ProvideData({Key? key}) : super(key: key);

  @override
  State<ProvideData> createState() => _ProvideDataState();
}

class _ProvideDataState extends State<ProvideData> {

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QRViewExample(),
              ));
            }, child: Text('QR Scan')),
            TextButton(onPressed: (){
               setState(() {
                 isVisible =true;
               });
            }, child: Text('Location Share')),
            Visibility(
              visible: isVisible,
                child: Column(
                  children: [
                    Text(Utilities.location),
                    Text(Utilities.Address),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
