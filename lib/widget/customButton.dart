import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String text = "Coffee";
  CustomButton(t) {
    this.text = t;
  }

  @override
  _CustomButtonState createState() => _CustomButtonState(text);
}

class _CustomButtonState extends State<CustomButton> {
  String text = "Coffee";
  _CustomButtonState(t) {
    this.text = t;
  }
  bool checked = true;
  Widget retbutt(checked, text) {
    if (checked) {
      return TextButton(
          onPressed: func,
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color.fromARGB(255, 1, 50, 77)),
                  borderRadius: BorderRadius.all(Radius.circular(25)))),
          child: Text(
            text,
            style: TextStyle(color: Color.fromARGB(255, 1, 50, 77)),
          ));
    } else {
      return ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 1, 50, 77),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)))),
          //shadowColor: Colors.amber, // Shadow Color

          child: Text(text));
    }
  }

  void func() {
    setState(() {
      if (checked) {
        checked = false;
      } else {
        checked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return retbutt(checked, text);
  }
}
