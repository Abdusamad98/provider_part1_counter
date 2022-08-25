import 'package:flutter/material.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key, required this.myStringListener})
      : super(key: key);

  final ValueChanged<String> myStringListener;

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data screen"),
      ),
      body: Center(
        child: TextField(
          onChanged: (v){
            widget.myStringListener.call(v);
          },
        ),
      ),
    );
  }
}
