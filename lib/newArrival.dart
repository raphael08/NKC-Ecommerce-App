import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'settings.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  @override
  Widget build(BuildContext context) {
    final items = [
      ["assets/images/1.png", "sneakers", 'TSH 12000'],
      ["assets/images/2.png", "sn", 'TSH 15000'],
      ["assets/images/3.png", "sn", 'TSH 20000'],
      ["assets/images/4.png", "fggfghg", 'TSH 45000'],
      ["assets/images/5.png", "hcscvvvchzx", 'TSH 70000'],
      ["assets/images/7.jpg", "ffw", 'TSH 65000'],
      ["assets/images/1.png", "sneakers", 'TSH 12000'],
      ["assets/images/2.png", "sn", 'TSH 15000'],
      ["assets/images/3.png", "sn", 'TSH 20000'],
      ["assets/images/4.png", "fggfghg", 'TSH 45000'],
      ["assets/images/5.png", "hcscvvvchzx", 'TSH 70000'],
      ["assets/images/7.jpg", "rfqwrfqw", 'TSH 65000'],
    ];
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xff044861),
          title: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: '      PRODUCT\n',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextSpan(
                    text: 'New Arrival',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Badge(
                badgeContent: Text('3'),
                position: BadgePosition.topEnd(top: 1, end: 3),

                // animationType: BadgeAnimationType.fade,
                child: IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  tooltip: 'cart',
                  onPressed: () {},
                ))
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            tooltip: 'back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: GridView
            .count(crossAxisCount: 1, childAspectRatio: (2), children: <Widget>[
          ...items.map((i) => InkWell(
              onTap: () {},
              child: Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black12, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 2.0,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: Flexible(
                          child: FractionallySizedBox(
                              heightFactor: 1,
                              //widthFactor: 0.2,
                              child: Column(children: [
                                Row(children: [
                                  Container(
                                    //constraints: BoxConstraints.expand(),
                                    // alignment: Alignment.topCenter,

                                    // margin: EdgeInsets.only(
                                    //   left: 8.0,
                                    //   right: 8.0,
                                    // ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                      child: Container(
                                        width: 200,
                                        height: 190,
                                        child: Image.asset(
                                          i[0],
                                          fit: BoxFit.cover,
                                          //width: double.maxFinite,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //constraints: BoxConstraints.expand(),
                                    // alignment: Alignment.topCenter,

                                    // margin: EdgeInsets.only(
                                    //   left: 8.0,
                                    //   right: 8.0,
                                    // ),

                                    child:
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                        Container(
                                      //alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(left: 10),
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color:
                                                Color.fromARGB(255, 46, 10, 10),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: i[1] + "\n\n",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            TextSpan(
                                              text: i[2],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ])
                              ])))))))
        ]));
  }
}
