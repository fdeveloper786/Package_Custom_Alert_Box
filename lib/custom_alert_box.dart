// ignore_for_file: prefer_const_constructors

library custom_alert_box;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlertBox {
  static Future showCustomAlertBox({
    required BuildContext context,
    required Widget willDisplayWidget,
  }) {
    assert(context != null, "context is null !!");
    assert(willDisplayWidget != null, "willDisplayWidget is null !!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                willDisplayWidget,
                MaterialButton(
                  color: Colors.blueAccent,
                  child: Text(
                    'close alert',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}
