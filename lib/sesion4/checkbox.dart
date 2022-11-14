import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxs extends StatelessWidget {
  bool isSwitched = true;
  bool isChecked = false;
  // modelo iphone
  bool isSwitchedCuppertino = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Box'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Switch(
              value: isSwitched,
              onChanged: ((value) {
                setState(() => {
                      isSwitched = value,
                    });
              }),
            ),
            Checkbox(
              value: isChecked,
              onChanged: ((value) {
                setState(() => {
                      isChecked = value!,
                    });
              }),
            ),
            CupertinoSwitch(
              value: isSwitchedCuppertino,
              activeColor: CupertinoColors.activeBlue,
              onChanged: ((value) {
                setState(() => {
                      isSwitchedCuppertino = value ?? false,
                    });
              }),
            )
          ],
        ),
      ),
    );
  }

  void setState(Set<bool> Function() param0) {}
}
