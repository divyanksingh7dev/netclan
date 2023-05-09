import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomCard extends StatelessWidget {
  String name = "";
  String loc = "";
  String tag = "";
  String intro = "";
  String dis = "";
  CustomCard(n, l, t, i, d) {
    this.name = n;
    this.loc = l;
    this.tag = tag;
    this.intro = i;
    this.dis = d;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: Card(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.fromLTRB(90, 10, 5, 5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(name),
                          Text(loc),
                          SizedBox(
                            height: 5,
                          ),
                          LinearPercentIndicator(
                            width: 100.0,
                            lineHeight: 7.0,
                            percent: 0.5,
                            backgroundColor: Colors.grey,
                            progressColor: Colors.blue,
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {
                            print("object");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.add),
                              Text(
                                "INVITE",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 0.0),
                      width: double.infinity,
                      child: Text(
                        //textAlign: TextAlign.justify,
                        tag,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        intro,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        //height: double.maxFinite,
                        width: double.infinity,
                        child: Text(
                          dis,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    )
                  ]),
                )
              ]),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 110,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
                //bottomLeft: Radius.circular(7),
              ),
              image: DecorationImage(
                image: NetworkImage(
                    'https://onlinejpgtools.com/images/examples-onlinejpgtools/butterfly-icon.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            //decoration: BoxDecoration(color: Colors.orange),
          )
        ],
      ),
    );
  }
}
