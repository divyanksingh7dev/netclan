import 'package:flutter/material.dart';
import 'package:netclan/widget/customButton.dart';
import 'package:netclan/widget/custom_slider.dart';

List<String> list = <String>[
  'Available | Hay Let Us Connect',
  'Away | Stay Discreet And Watch',
  'Bust | Do Not Disturb | Will Catch Up Later',
  'SOS | Emergency! Need Assistance! HElp'
];

class Refine extends StatelessWidget {
  Refine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        Container(
          width: double.infinity,
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: Text(
                "Select Your Availibility",
                textAlign: TextAlign.left,
              ),
            ),
            Dropdown()
          ]),
        ),
        Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(children: [
            Container(
              width: double.infinity,
              child: Text(
                "Add Your Status",
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              maxLength: 250,
              //cursorColor: Colors.black,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  )),
            )
          ]),
        ),
        Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(children: [
              Container(
                width: double.infinity,
                child: Text(
                  "Select Hyper Local Distance",
                  textAlign: TextAlign.left,
                ),
              ),
              CustomSlider()
            ])),
        Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(children: [
              Container(
                width: double.infinity,
                child: Text(
                  "Select Purpose",
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  CustomButton("Coffee"),
                  CustomButton("Business"),
                  CustomButton("Hobbies"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton("Friendship"),
                  CustomButton("Movies"),
                  CustomButton("Dinning"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton("Dating"),
                  CustomButton("Matrimony"),
                ],
              )
            ])),
        Container(
          width: double.infinity,
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              print("debug");
            },
            child: Text("Save And Explore"),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 1, 50, 77),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          )),
        )
      ]),
    );
  }
}

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.black,
        //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
