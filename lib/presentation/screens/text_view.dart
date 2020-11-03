import 'dart:ui';

import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String _extractedText;
  const TextView({Key key, String extractedText})
      : _extractedText = extractedText,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: buildButtonBar(),
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    _extractedText,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Row buildButtonBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlatButton.icon(
            textColor: Colors.white,
            color: Color(0xFF0C44FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              //TODO
            },
            icon: Icon(Icons.save_alt_outlined),
            label: Text(
              'Save',
              style: TextStyle(color: Colors.white),
            )),
        FlatButton.icon(
            textColor: Colors.red,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              //TODO
            },
            icon: Icon(Icons.delete_outline_outlined),
            label: Text(
              'Delete',
            ))
      ],
    );
  }
}
